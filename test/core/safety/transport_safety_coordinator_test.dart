import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:vision_minus/core/safety/transport_safety_coordinator.dart';

void main() {
  group('capabilities and activation', () {
    test('action deadline must be positive', () {
      expect(
        () => TransportSafetyOwner.create(
          ScriptedActions(),
          actionTimeout: Duration.zero,
        ),
        throwsArgumentError,
      );
      expect(
        () => TransportSafetyOwner.create(
          ScriptedActions(),
          actionTimeout: const Duration(milliseconds: -1),
        ),
        throwsArgumentError,
      );
    });

    test(
        'action deadline rejects values above the finite platform-safe maximum',
        () {
      expect(
        () => TransportSafetyOwner.create(
          ScriptedActions(),
          actionTimeout: const Duration(hours: 24, microseconds: 1),
        ),
        throwsArgumentError,
      );
      expect(
        () => TransportSafetyOwner.create(
          ScriptedActions(),
          actionTimeout: const Duration(hours: 24),
        ),
        returnsNormally,
      );
    });

    test('view is read-only and activation is the only eligibility assertion',
        () async {
      final owner = TransportSafetyOwner.create(ScriptedActions());
      final dynamic view = owner.view;
      expect(owner.view.snapshot.phase, TransportSafetyPhase.closed);
      expect(() => view.activate(), throwsA(isA<NoSuchMethodError>()));
      expect(() => view.disconnect(null), throwsA(isA<NoSuchMethodError>()));
      final lease = await owner.transport.activate();
      expect(owner.view.snapshot.phase, TransportSafetyPhase.active);
      expect(owner.view.maySendNonzeroThrust(lease), isFalse);
      await arm(owner, lease);
      expect(owner.view.maySendNonzeroThrust(lease), isTrue);
      final dynamic snapshot = owner.view.snapshot;
      expect(
          () => snapshot.armState = ArmSemanticState.safe, throwsA(anything));
    });

    test('activation is rejected throughout shutdown and recovery', () async {
      final actions = ScriptedActions()
        ..unknownAt.add(TransportSafetyPhase.shutdownZero);
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      await expectShutdownFailure(owner, lease);
      expect(
          owner.view.snapshot.recovery, RecoveryStatus.reconciliationRequired);
      await expectLater(owner.transport.activate(), throwsStateError);
    });
  });

  group('guarded reentrant shutdown', () {
    test('already SAFE skips shutdown command phases and closes once',
        () async {
      final actions = ScriptedActions();
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      expect(
          await owner.observations.observe(lease, ArmObservation.safe), isTrue);
      await shutdown(owner, lease);
      expect(() => owner.transport.disconnect(lease), throwsStateError);
      expect(actions.phases, [TransportSafetyPhase.closePending]);
    });

    test('busy queue reproduction latches synchronously and denies thrust',
        () async {
      final owner = TransportSafetyOwner.create(ScriptedActions());
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      // This mutation is admitted before disconnect and remains pending until
      // the coordinator's microtask drain runs: the verdict-5 busy-queue case.
      final queued = owner.commands.requestDisarm(lease);

      final disconnect = owner.transport.disconnect(lease);
      expect(owner.view.snapshot.shutdownLatched, isTrue);
      expect(owner.view.maySendNonzeroThrust(lease), isFalse);
      expect(await queued, isNull);
      await owner.transport.waitForShutdown(disconnect);
    });

    test('zero callback may await disconnect admission without self-join',
        () async {
      late TransportSafetyOwner owner;
      late TransportLease lease;
      final actions = ScriptedActions();
      owner = TransportSafetyOwner.create(actions);
      actions.onPhase = (operation, attempt) async {
        if (operation.phase == TransportSafetyPhase.shutdownZero) {
          // Intentionally prove Dart's await accepts synchronous admission.
          // ignore: await_only_futures
          final reentrant = await owner.transport.disconnect(lease);
          expect(identical(reentrant, actions.admittedHandle), isTrue);
        }
      };
      lease = await owner.transport.activate();
      await arm(owner, lease);
      final handle = owner.transport.disconnect(lease);
      actions.admittedHandle = handle;
      await owner.transport
          .waitForShutdown(handle)
          .timeout(const Duration(seconds: 1));
      expect(owner.view.snapshot.phase, TransportSafetyPhase.closed);
    });

    for (final callbackPhase in [
      TransportSafetyPhase.shutdownZero,
      TransportSafetyPhase.shutdownExit,
      TransportSafetyPhase.shutdownDisarm,
      TransportSafetyPhase.shutdownWait,
      TransportSafetyPhase.closePending,
    ]) {
      test(
          '$callbackPhase callback owner-operation matrix fails self-wait fast',
          () async {
        late TransportSafetyOwner owner;
        late TransportLease lease;
        late ShutdownHandle admitted;
        final actions = ScriptedActions();
        owner = TransportSafetyOwner.create(actions);
        actions.onPhase = (operation, attempt) async {
          if (operation.phase != callbackPhase) return;
          expect(owner.view.snapshot.shutdownLatched, isTrue);
          expect(owner.view.maySendNonzeroThrust(lease), isFalse);
          expect(
            // Intentionally prove every callback may await admission safely.
            // ignore: await_only_futures
            identical(await owner.transport.disconnect(lease), admitted),
            isTrue,
          );
          Object? selfWaitError;
          await Future<void>(() async {
            try {
              await owner.transport.waitForShutdown(admitted);
            } catch (error) {
              selfWaitError = error;
            }
          });
          expect(selfWaitError, isA<StateError>());
          expect(
            selfWaitError.toString(),
            contains('cannot wait for its own run'),
          );
          await expectLater(owner.transport.activate(), throwsStateError);
          expect(await owner.commands.requestArm(lease), isNull);
          expect(await owner.commands.requestDisarm(lease), isNull);
          expect(await owner.observations.observe(lease, ArmObservation.armed),
              isFalse);
          if (attempt != null) {
            expect(
                await owner.commands.commandTimedOut(lease, attempt), isFalse);
          }
          expect(
              await owner.reconciliation
                  .reconcile(operation, Reconciliation.effectApplied),
              isFalse);
        };
        lease = await owner.transport.activate();
        await arm(owner, lease);
        admitted = owner.transport.disconnect(lease);
        await owner.transport
            .waitForShutdown(admitted)
            .timeout(const Duration(seconds: 1));
        expect(actions.phases.where((p) => p == callbackPhase).length, 1);
        expect(owner.view.snapshot.phase, TransportSafetyPhase.closed);
      });
    }

    test('callback waiting on a foreign handle is validated as foreign',
        () async {
      final foreignOwner = TransportSafetyOwner.create(ScriptedActions());
      final foreignLease = await foreignOwner.transport.activate();
      await foreignOwner.observations
          .observe(foreignLease, ArmObservation.safe);
      final foreignHandle = foreignOwner.transport.disconnect(foreignLease);
      await foreignOwner.transport.waitForShutdown(foreignHandle);

      late TransportSafetyOwner owner;
      final actions = ScriptedActions();
      owner = TransportSafetyOwner.create(actions);
      actions.onPhase = (operation, attempt) async {
        if (operation.phase != TransportSafetyPhase.shutdownZero) return;
        Object? error;
        try {
          await owner.transport.waitForShutdown(foreignHandle);
        } catch (caught) {
          error = caught;
        }
        expect(error, isA<StateError>());
        expect(error.toString(), contains('Stale or forged shutdown handle'));
      };
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      await shutdown(owner, lease);
      expect(owner.view.snapshot.phase, TransportSafetyPhase.closed);
    });

    test('uncaught same-run wait is classified as unknown effect', () async {
      late TransportSafetyOwner owner;
      late ShutdownHandle handle;
      final actions = ScriptedActions();
      owner = TransportSafetyOwner.create(actions);
      actions.onPhase = (operation, attempt) async {
        if (operation.phase == TransportSafetyPhase.shutdownZero) {
          await owner.transport.waitForShutdown(handle);
        }
      };
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      handle = owner.transport.disconnect(lease);
      await expectLater(
          owner.transport.waitForShutdown(handle), throwsStateError);
      expect(
        owner.view.snapshot.recovery,
        RecoveryStatus.reconciliationRequired,
      );
      expect(
        owner.view.snapshot.reconciliationOperation?.phase,
        TransportSafetyPhase.shutdownZero,
      );
      expect(actions.phases, [TransportSafetyPhase.shutdownZero]);
    });

    test('wait callback confirms exact shutdown attempt without deadlock',
        () async {
      late TransportSafetyOwner owner;
      final actions = ScriptedActions();
      owner = TransportSafetyOwner.create(actions);
      actions.onWait = (operation, attempt) async {
        final accepted = await owner.observations.confirm(
          operation.lease,
          attempt,
          ArmObservation.safe,
        );
        expect(accepted, isTrue);
        return const ShutdownActionResult.succeeded(
            ShutdownWaitResult.confirmedSafe);
      };
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      await owner.transport
          .waitForShutdown(owner.transport.disconnect(lease))
          .timeout(const Duration(seconds: 1));
      expect(owner.view.snapshot.phase, TransportSafetyPhase.closed);
    });

    test('arbitrary ARMED observations remain rejected while latched',
        () async {
      final entered = Completer<void>();
      final release = Completer<void>();
      final actions = ScriptedActions()
        ..pauseAt = TransportSafetyPhase.shutdownZero
        ..entered = entered
        ..release = release;
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      final disconnect = owner.transport.disconnect(lease);
      await entered.future;
      expect(await owner.observations.observe(lease, ArmObservation.armed),
          isFalse);
      release.complete();
      await owner.transport.waitForShutdown(disconnect);
    });

    test(
        'concurrent disconnect callers join one run and closed repeats fail closed',
        () async {
      final entered = Completer<void>();
      final release = Completer<void>();
      final actions = ScriptedActions()
        ..pauseAt = TransportSafetyPhase.shutdownZero
        ..entered = entered
        ..release = release;
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      final one = owner.transport.disconnect(lease);
      await entered.future;
      final two = owner.transport.disconnect(lease);
      release.complete();
      expect(identical(one, two), isTrue);
      await Future.wait([
        owner.transport.waitForShutdown(one),
        owner.transport.waitForShutdown(two),
      ]);
      expect(() => owner.transport.disconnect(lease), throwsStateError);
      expect(actions.phases, [
        TransportSafetyPhase.shutdownZero,
        TransportSafetyPhase.shutdownExit,
        TransportSafetyPhase.shutdownDisarm,
        TransportSafetyPhase.shutdownWait,
        TransportSafetyPhase.closePending,
      ]);
      expect(actions.operations.toSet().length, actions.operations.length);
    });
    test('concurrent handles observe one reconciliation-required failure',
        () async {
      final entered = Completer<void>();
      final release = Completer<void>();
      final actions = ScriptedActions()
        ..pauseAt = TransportSafetyPhase.shutdownZero
        ..entered = entered
        ..release = release
        ..unknownAt.add(TransportSafetyPhase.shutdownZero);
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      final one = owner.transport.disconnect(lease);
      await entered.future;
      final two = owner.transport.disconnect(lease);
      expect(identical(one, two), isTrue);
      release.complete();
      await expectLater(owner.transport.waitForShutdown(one), throwsStateError);
      await expectLater(owner.transport.waitForShutdown(two), throwsStateError);
      expect(
          owner.view.snapshot.recovery, RecoveryStatus.reconciliationRequired);
      expect(actions.phases, [TransportSafetyPhase.shutdownZero]);
    });
  });

  group('phase recovery', () {
    const actionTimeout = Duration(milliseconds: 40);

    for (final phase in [
      TransportSafetyPhase.shutdownZero,
      TransportSafetyPhase.shutdownExit,
      TransportSafetyPhase.shutdownDisarm,
      TransportSafetyPhase.shutdownWait,
      TransportSafetyPhase.closePending,
    ]) {
      test('$phase Zone.root same-handle wait reaches deadline reconciliation',
          () async {
        late TransportSafetyOwner owner;
        late ShutdownHandle handle;
        final actions = ScriptedActions();
        owner = TransportSafetyOwner.create(
          actions,
          actionTimeout: actionTimeout,
        );
        actions.onPhase = (operation, attempt) async {
          if (operation.phase == phase) {
            await Zone.root.run(
              () => owner.transport.waitForShutdown(handle),
            );
          }
        };
        final lease = await owner.transport.activate();
        await arm(owner, lease);
        handle = owner.transport.disconnect(lease);

        await expectLater(
          owner.transport
              .waitForShutdown(handle)
              .timeout(const Duration(seconds: 1)),
          throwsStateError,
        );
        final snapshot = owner.view.snapshot;
        expect(snapshot.phase, TransportSafetyPhase.reconciliationRequired);
        expect(snapshot.recovery, RecoveryStatus.reconciliationRequired);
        expect(snapshot.shutdownLatched, isTrue);
        expect(owner.view.maySendNonzeroThrust(lease), isFalse);
        expect(snapshot.reconciliationOperation?.phase, phase);
        expect(snapshot.lastTimedOutPhase, phase);
        expect(snapshot.actionTimeout, actionTimeout);
        expect(snapshot.lastTimedOutDeadline, isNotNull);
      });
    }

    for (final blockedPhase in [
      TransportSafetyPhase.shutdownZero,
      TransportSafetyPhase.shutdownExit,
      TransportSafetyPhase.shutdownDisarm,
      TransportSafetyPhase.shutdownWait,
      TransportSafetyPhase.closePending,
    ]) {
      test('$blockedPhase never-completing callback times out exactly',
          () async {
        final never = Completer<void>();
        final actions = ScriptedActions();
        actions.onPhase = (operation, attempt) =>
            operation.phase == blockedPhase ? never.future : Future.value();
        final owner = TransportSafetyOwner.create(
          actions,
          actionTimeout: actionTimeout,
        );
        final lease = await owner.transport.activate();
        await arm(owner, lease);
        final handle = owner.transport.disconnect(lease);

        await expectLater(
          owner.transport
              .waitForShutdown(handle)
              .timeout(const Duration(seconds: 1)),
          throwsStateError,
        );
        final snapshot = owner.view.snapshot;
        expect(snapshot.reconciliationOperation?.phase, blockedPhase);
        expect(snapshot.lastTimedOutPhase, blockedPhase);
        expect(snapshot.lastTimedOutDeadline, isNotNull);
        expect(
          identical(snapshot.reconciliationOperation, actions.operations.last),
          isTrue,
        );
      });
    }

    for (final reconciliation in Reconciliation.values) {
      test(
          'timed-out disarm attempt is revoked after ${reconciliation.name} and a newer operation',
          () async {
        final releaseOldDisarm = Completer<void>();
        final oldCallbackFinished = Completer<bool>();
        late TransportSafetyOwner owner;
        late TransportCommandAttempt staleAttempt;
        var heldOldDisarm = false;
        final actions = ScriptedActions();
        actions.onPhase = (operation, attempt) async {
          if (operation.phase != TransportSafetyPhase.shutdownDisarm ||
              heldOldDisarm) {
            return;
          }
          heldOldDisarm = true;
          staleAttempt = attempt!;
          await releaseOldDisarm.future;
          oldCallbackFinished.complete(
            await owner.observations.confirm(
              operation.lease,
              staleAttempt,
              ArmObservation.safe,
            ),
          );
        };
        owner = TransportSafetyOwner.create(
          actions,
          actionTimeout: actionTimeout,
        );
        final lease = await owner.transport.activate();
        await arm(owner, lease);
        final oldHandle = owner.transport.disconnect(lease);
        await expectLater(
            owner.transport.waitForShutdown(oldHandle), throwsStateError);
        final oldOperation = owner.view.snapshot.reconciliationOperation!;
        expect(oldOperation.phase, TransportSafetyPhase.shutdownDisarm);
        expect(
          await owner.reconciliation.reconcile(oldOperation, reconciliation),
          isTrue,
        );

        final newerHandle = owner.transport.disconnect(lease);
        await Future<void>.delayed(Duration.zero);
        releaseOldDisarm.complete();
        expect(await oldCallbackFinished.future, isFalse);
        expect(owner.view.snapshot.armState, isNot(ArmSemanticState.safe));
        await owner.transport.waitForShutdown(newerHandle);
      });
    }

    for (final reconciliation in Reconciliation.values) {
      test(
          'Zone.root callback cannot derive reconciliation authority for ${reconciliation.name}',
          () async {
        final release = Completer<void>();
        final finished = Completer<List<Object?>>();
        final actions = ScriptedActions();
        late TransportOwnerCapability transport;
        late TransportCommandCapability commands;
        late TransportObservationCapability observations;
        late TransportSafetyView view;
        late TransportLease lease;
        late ShutdownHandle handle;
        late TransportCommandAttempt retainedAttempt;
        var retainedFirstOperation = false;
        actions.onPhase = (operation, attempt) async {
          if (operation.phase != TransportSafetyPhase.shutdownZero ||
              retainedFirstOperation) {
            return;
          }
          retainedFirstOperation = true;
          await release.future;
          final results = await Zone.root.run(() async {
            final dynamicErrors = <Object?>[];
            for (final capability in [
              transport,
              commands,
              observations,
              view
            ]) {
              try {
                (capability as dynamic).reconcile(operation, reconciliation);
                dynamicErrors.add(null);
              } catch (error) {
                dynamicErrors.add(error);
              }
            }
            for (final invocation in <void Function()>[
              () => (operation as dynamic).reconcile(reconciliation),
              () => (operation as dynamic).authority,
            ]) {
              try {
                invocation();
                dynamicErrors.add(null);
              } catch (error) {
                dynamicErrors.add(error);
              }
            }
            Object? activationError;
            Object? disconnectError;

            try {
              await transport.activate();
            } catch (error) {
              activationError = error;
            }
            try {
              transport.disconnect(lease);
            } catch (error) {
              disconnectError = error;
            }

            return <Object?>[
              view.snapshot.phase,
              view.maySendNonzeroThrust(lease),
              ...dynamicErrors,
              activationError,
              await commands.requestArm(lease),
              await commands.requestDisarm(lease),
              await commands.commandTimedOut(lease, retainedAttempt),
              await observations.confirm(
                  lease, retainedAttempt, ArmObservation.armed),
              await observations.observe(lease, ArmObservation.safe),
              disconnectError,
            ];
          });
          finished.complete(results);
        };
        final owner = TransportSafetyOwner.create(
          actions,
          actionTimeout: actionTimeout,
        );
        transport = owner.transport;
        commands = owner.commands;
        observations = owner.observations;
        view = owner.view;
        lease = await transport.activate();
        retainedAttempt = (await commands.requestArm(lease))!;
        expect(
          await observations.confirm(
              lease, retainedAttempt, ArmObservation.armed),
          isTrue,
        );
        handle = transport.disconnect(lease);
        await expectLater(transport.waitForShutdown(handle), throwsStateError);
        final operation = view.snapshot.reconciliationOperation!;
        release.complete();
        final results = await finished.future;
        expect(results[0], TransportSafetyPhase.reconciliationRequired);
        expect(results[1], isFalse);
        for (final error in results.sublist(2, 8)) {
          expect(error, isA<NoSuchMethodError>());
        }
        expect(results[8], isA<StateError>());
        expect(results.sublist(9, 14), [null, null, false, false, false]);
        expect(results[14], isA<StateError>());

        expect(
            view.snapshot.phase, TransportSafetyPhase.reconciliationRequired);
        expect(
          await owner.reconciliation.reconcile(operation, reconciliation),
          isTrue,
        );
        await shutdown(owner, lease);
      });
    }

    test('foreign reconciliation authority and operation are rejected',
        () async {
      final actions = ScriptedActions()
        ..unknownAt.add(TransportSafetyPhase.shutdownZero);
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      await expectShutdownFailure(owner, lease);
      final operation = owner.view.snapshot.reconciliationOperation!;

      final foreignActions = ScriptedActions()
        ..unknownAt.add(TransportSafetyPhase.shutdownZero);
      final foreignOwner = TransportSafetyOwner.create(foreignActions);
      final foreignLease = await foreignOwner.transport.activate();
      await arm(foreignOwner, foreignLease);
      await expectShutdownFailure(foreignOwner, foreignLease);
      final foreignOperation =
          foreignOwner.view.snapshot.reconciliationOperation!;

      expect(
        await foreignOwner.reconciliation
            .reconcile(operation, Reconciliation.effectApplied),
        isFalse,
      );
      expect(
        await owner.reconciliation
            .reconcile(foreignOperation, Reconciliation.effectApplied),
        isFalse,
      );
      expect(owner.view.snapshot.reconciliationOperation, same(operation));
      expect(
        await owner.reconciliation
            .reconcile(operation, Reconciliation.effectApplied),
        isTrue,
      );
    });

    test('transport owner capability has no reconciliation API', () {
      final owner = TransportSafetyOwner.create(ScriptedActions());
      expect(
        () => (owner.transport as dynamic)
            .reconcile(null, Reconciliation.effectApplied),
        throwsA(isA<NoSuchMethodError>()),
      );
    });

    test('abandoned timed-out callback cannot invoke any public capability',
        () async {
      final release = Completer<void>();
      final finished = Completer<void>();
      late TransportSafetyOwner owner;
      late TransportLease lease;
      late TransportCommandAttempt retainedAttempt;
      late ShutdownHandle oldHandle;
      late ShutdownHandle newerHandle;
      final actions = ScriptedActions();
      var held = false;
      actions.onPhase = (operation, attempt) async {
        if (held) return;
        held = true;
        await release.future;
        expect(owner.view.maySendNonzeroThrust(lease), isFalse);
        await expectLater(owner.transport.activate(), throwsStateError);
        expect(await owner.commands.requestArm(lease), isNull);
        expect(await owner.commands.requestDisarm(lease), isNull);
        expect(
          await owner.commands.commandTimedOut(lease, retainedAttempt),
          isFalse,
        );
        expect(
          await owner.observations
              .confirm(lease, retainedAttempt, ArmObservation.armed),
          isFalse,
        );
        expect(
          await owner.observations.observe(lease, ArmObservation.safe),
          isFalse,
        );
        expect(() => owner.transport.disconnect(lease), throwsStateError);
        await expectLater(
            owner.transport.waitForShutdown(oldHandle), throwsStateError);
        await expectLater(
            owner.transport.waitForShutdown(newerHandle), throwsStateError);
        expect(
          () => (owner.transport as dynamic)
              .reconcile(operation, Reconciliation.effectApplied),
          throwsA(isA<NoSuchMethodError>()),
        );
        finished.complete();
      };
      owner = TransportSafetyOwner.create(
        actions,
        actionTimeout: actionTimeout,
      );
      lease = await owner.transport.activate();
      retainedAttempt = (await owner.commands.requestArm(lease))!;
      expect(
        await owner.observations
            .confirm(lease, retainedAttempt, ArmObservation.armed),
        isTrue,
      );
      oldHandle = owner.transport.disconnect(lease);
      await expectLater(
          owner.transport.waitForShutdown(oldHandle), throwsStateError);
      final oldOperation = owner.view.snapshot.reconciliationOperation!;
      expect(
        await owner.reconciliation
            .reconcile(oldOperation, Reconciliation.effectApplied),
        isTrue,
      );
      newerHandle = owner.transport.disconnect(lease);
      await Future<void>.delayed(Duration.zero);
      release.complete();
      await finished.future;
      await owner.transport.waitForShutdown(newerHandle);
    });

    for (final lateThrows in [false, true]) {
      test(
          'late callback ${lateThrows ? 'error' : 'success'} is quarantined after timeout',
          () async {
        final release = Completer<void>();
        final actions = ScriptedActions();
        ShutdownOperation? delayedOperation;
        actions.onPhase = (operation, attempt) async {
          delayedOperation ??= operation;
          if (!identical(operation, delayedOperation)) return;
          await release.future;
          if (lateThrows) throw StateError('late adapter error');
        };
        final owner = TransportSafetyOwner.create(
          actions,
          actionTimeout: actionTimeout,
        );
        final lease = await owner.transport.activate();
        await arm(owner, lease);
        final oldHandle = owner.transport.disconnect(lease);
        await expectLater(
            owner.transport.waitForShutdown(oldHandle), throwsStateError);
        final operation = owner.view.snapshot.reconciliationOperation!;

        expect(
          await owner.reconciliation
              .reconcile(operation, Reconciliation.effectApplied),
          isTrue,
        );
        final resumed = owner.transport.disconnect(lease);
        release.complete();
        await Future<void>.delayed(const Duration(milliseconds: 10));
        expect(owner.view.snapshot.phase,
            isNot(TransportSafetyPhase.reconciliationRequired));
        expect(identical(resumed, oldHandle), isFalse);
        await expectLater(
            owner.transport.waitForShutdown(oldHandle), throwsStateError);
        await owner.transport.waitForShutdown(resumed);
        expect(
          actions.operations.where((item) => identical(item, operation)).length,
          1,
        );
      });
    }

    test('late old result is ignored after not-applied creates new identity',
        () async {
      final release = Completer<void>();
      final actions = ScriptedActions();
      actions.onPhase = (operation, attempt) async {
        if (actions.operations.length == 1) await release.future;
      };
      final owner = TransportSafetyOwner.create(
        actions,
        actionTimeout: actionTimeout,
      );
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      final oldHandle = owner.transport.disconnect(lease);
      await expectLater(
          owner.transport.waitForShutdown(oldHandle), throwsStateError);
      final oldOperation = owner.view.snapshot.reconciliationOperation!;
      expect(
        await owner.reconciliation
            .reconcile(oldOperation, Reconciliation.effectNotApplied),
        isTrue,
      );

      final retry = owner.transport.disconnect(lease);
      await owner.transport.waitForShutdown(retry);
      final retryOperation = actions.operations[1];
      expect(identical(oldOperation, retryOperation), isFalse);
      release.complete();
      await Future<void>.delayed(const Duration(milliseconds: 10));
      expect(owner.view.snapshot.phase, TransportSafetyPhase.closed);
      expect(
          await owner.reconciliation
              .reconcile(oldOperation, Reconciliation.effectApplied),
          isFalse);
    });

    for (final phase in [
      TransportSafetyPhase.shutdownZero,
      TransportSafetyPhase.shutdownExit,
      TransportSafetyPhase.shutdownDisarm,
      TransportSafetyPhase.shutdownWait,
      TransportSafetyPhase.closePending,
    ]) {
      test('$phase failedBeforeEffect retries only that phase and suffix',
          () async {
        final actions = ScriptedActions()..failBeforeAt.add(phase);
        final owner = TransportSafetyOwner.create(actions);
        final lease = await owner.transport.activate();
        await arm(owner, lease);
        await expectShutdownFailure(owner, lease);
        final prefix = List<TransportSafetyPhase>.of(actions.phases);
        expect(owner.view.snapshot.phase, phase);
        await shutdown(owner, lease);
        for (final completed in prefix.take(prefix.length - 1)) {
          expect(actions.phases.where((p) => p == completed).length, 1);
        }
        expect(actions.phases.where((p) => p == phase).length, 2);
        expect(owner.view.snapshot.phase, TransportSafetyPhase.closed);
      });
    }

    test(
        'unknown disarm effect requires exact trusted reconciliation; no replay',
        () async {
      final actions = ScriptedActions()
        ..unknownAt.add(TransportSafetyPhase.shutdownDisarm);
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      await expectShutdownFailure(owner, lease);
      final operation = actions.operations.last;
      expect(owner.view.snapshot.phase,
          TransportSafetyPhase.reconciliationRequired);
      expect(() => owner.transport.disconnect(lease), throwsStateError);
      expect(
          await owner.reconciliation
              .reconcile(operation, Reconciliation.effectApplied),
          isTrue);
      expect(
          await owner.reconciliation
              .reconcile(operation, Reconciliation.effectApplied),
          isFalse);
      await shutdown(owner, lease);
      expect(
          actions.phases
              .where((p) => p == TransportSafetyPhase.shutdownDisarm)
              .length,
          1);
    });

    test('thrown action is ambiguous and is never blindly replayed', () async {
      final actions = ScriptedActions()
        ..throwAt.add(TransportSafetyPhase.shutdownExit);
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      await expectShutdownFailure(owner, lease);
      final operation = actions.operations.last;
      expect(owner.view.snapshot.phase,
          TransportSafetyPhase.reconciliationRequired);
      expect(() => owner.transport.disconnect(lease), throwsStateError);
      expect(
          actions.phases
              .where((phase) => phase == TransportSafetyPhase.shutdownExit)
              .length,
          1);
      expect(
          await owner.reconciliation
              .reconcile(operation, Reconciliation.effectNotApplied),
          isTrue);
      await shutdown(owner, lease);
    });

    test('stale operation reconciliation is rejected', () async {
      final actions = ScriptedActions()
        ..failBeforeAt.add(TransportSafetyPhase.shutdownZero)
        ..unknownAt.add(TransportSafetyPhase.shutdownZero);
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      await expectShutdownFailure(owner, lease);
      final stale = actions.operations.last;
      await expectShutdownFailure(owner, lease);
      expect(
          await owner.reconciliation
              .reconcile(stale, Reconciliation.effectApplied),
          isFalse);
    });

    test('unknown close applied reaches CLOSED without re-close', () async {
      final actions = ScriptedActions()
        ..unknownAt.add(TransportSafetyPhase.closePending);
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      await expectShutdownFailure(owner, lease);
      final close = actions.operations.last;
      expect(
          await owner.reconciliation
              .reconcile(close, Reconciliation.effectApplied),
          isTrue);
      expect(owner.view.snapshot.phase, TransportSafetyPhase.closed);
      expect(() => owner.transport.disconnect(lease), throwsStateError);
      expect(
          actions.phases
              .where((p) => p == TransportSafetyPhase.closePending)
              .length,
          1);
    });

    for (final priorExactSafe in [false, true]) {
      test(
          'unknown WAIT applied preserves ${priorExactSafe ? 'prior exact SAFE' : 'unknown'} state',
          () async {
        late TransportSafetyOwner owner;
        final actions = ScriptedActions()
          ..unknownAt.add(TransportSafetyPhase.shutdownWait);
        owner = TransportSafetyOwner.create(actions);
        if (priorExactSafe) {
          actions.onPhase = (operation, attempt) async {
            if (operation.phase == TransportSafetyPhase.shutdownWait) {
              expect(
                  await owner.observations
                      .confirm(operation.lease, attempt!, ArmObservation.safe),
                  isTrue);
            }
          };
        }
        final lease = await owner.transport.activate();
        await arm(owner, lease);
        await expectShutdownFailure(owner, lease);
        final wait = actions.operations.last;
        expect(wait.phase, TransportSafetyPhase.shutdownWait);
        expect(
            await owner.reconciliation
                .reconcile(wait, Reconciliation.effectApplied),
            isTrue);
        expect(owner.view.snapshot.armState,
            priorExactSafe ? ArmSemanticState.safe : ArmSemanticState.unknown);
        await shutdown(owner, lease);
        expect(
            actions.phases
                .where((p) => p == TransportSafetyPhase.shutdownWait)
                .length,
            1);
      });
    }

    test('failed handle stays failed while retry gets a new handle', () async {
      final actions = ScriptedActions()
        ..failBeforeAt.add(TransportSafetyPhase.shutdownExit);
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      final old = owner.transport.disconnect(lease);
      await expectLater(owner.transport.waitForShutdown(old), throwsStateError);
      final retry = owner.transport.disconnect(lease);
      expect(identical(old, retry), isFalse);
      await owner.transport.waitForShutdown(retry);
      await expectLater(owner.transport.waitForShutdown(old), throwsStateError);
      expect(
          actions.phases
              .where((p) => p == TransportSafetyPhase.shutdownZero)
              .length,
          1);
      expect(
          actions.phases
              .where((p) => p == TransportSafetyPhase.shutdownExit)
              .length,
          2);
    });

    test(
        'unknown close not applied returns CLOSE_PENDING and retries new identity',
        () async {
      final actions = ScriptedActions()
        ..unknownAt.add(TransportSafetyPhase.closePending);
      final owner = TransportSafetyOwner.create(actions);
      final lease = await owner.transport.activate();
      await arm(owner, lease);
      await expectShutdownFailure(owner, lease);
      final close = actions.operations.last;
      expect(
          await owner.reconciliation
              .reconcile(close, Reconciliation.effectNotApplied),
          isTrue);
      expect(owner.view.snapshot.phase, TransportSafetyPhase.closePending);
      await shutdown(owner, lease);
      final closes = actions.operations
          .where((o) => o.phase == TransportSafetyPhase.closePending)
          .toList();
      expect(closes.length, 2);
      expect(identical(closes[0], closes[1]), isFalse);
    });
  });

  group('identity invariants', () {
    test(
        'stale lease, superseded attempts, timeout and stable observations fail closed',
        () async {
      final owner = TransportSafetyOwner.create(ScriptedActions());
      final staleLease = await owner.transport.activate();
      await owner.observations.observe(staleLease, ArmObservation.safe);
      await shutdown(owner, staleLease);
      final lease = await owner.transport.activate();
      final old = (await owner.commands.requestArm(lease))!;
      final current = (await owner.commands.requestDisarm(lease))!;
      expect(await owner.observations.confirm(lease, old, ArmObservation.armed),
          isFalse);
      expect(await owner.commands.commandTimedOut(lease, old), isFalse);
      expect(await owner.observations.observe(staleLease, ArmObservation.armed),
          isFalse);
      expect(
          await owner.observations.confirm(lease, current, ArmObservation.safe),
          isTrue);
    });

    test('prior lease shutdown handle is stale after reactivation', () async {
      final owner = TransportSafetyOwner.create(ScriptedActions());
      final firstLease = await owner.transport.activate();
      await owner.observations.observe(firstLease, ArmObservation.safe);
      final oldHandle = owner.transport.disconnect(firstLease);
      await owner.transport.waitForShutdown(oldHandle);
      await owner.transport.activate();
      await expectLater(
          owner.transport.waitForShutdown(oldHandle), throwsStateError);
    });
  });
}

Future<void> shutdown(
  TransportSafetyOwner owner,
  TransportLease lease,
) =>
    owner.transport.waitForShutdown(owner.transport.disconnect(lease));

Future<void> expectShutdownFailure(
  TransportSafetyOwner owner,
  TransportLease lease,
) async {
  final handle = owner.transport.disconnect(lease);
  await expectLater(owner.transport.waitForShutdown(handle), throwsStateError);
}

Future<void> arm(TransportSafetyOwner owner, TransportLease lease) async {
  final attempt = (await owner.commands.requestArm(lease))!;
  expect(await owner.observations.confirm(lease, attempt, ArmObservation.armed),
      isTrue);
}

final class ScriptedActions implements TransportShutdownActions {
  final phases = <TransportSafetyPhase>[];
  final operations = <ShutdownOperation>[];
  final failBeforeAt = <TransportSafetyPhase>{};
  final unknownAt = <TransportSafetyPhase>{};
  final throwAt = <TransportSafetyPhase>{};
  TransportSafetyPhase? pauseAt;
  ShutdownHandle? admittedHandle;
  Future<void> Function(
    ShutdownOperation,
    TransportCommandAttempt?,
  )? onPhase;
  Completer<void>? entered;
  Completer<void>? release;
  Future<ShutdownActionResult<ShutdownWaitResult>> Function(
      ShutdownOperation, TransportCommandAttempt)? onWait;

  Future<ShutdownActionResult<void>> _void(ShutdownOperation operation,
      [TransportCommandAttempt? attempt]) async {
    phases.add(operation.phase);
    operations.add(operation);
    await onPhase?.call(operation, attempt);
    if (pauseAt == operation.phase) {
      entered!.complete();
      await release!.future;
      pauseAt = null;
    }
    if (failBeforeAt.remove(operation.phase)) {
      return const ShutdownActionResult.failedBeforeEffect();
    }
    if (unknownAt.remove(operation.phase)) {
      return const ShutdownActionResult.effectUnknown();
    }
    if (throwAt.remove(operation.phase)) {
      throw StateError('adapter lost effect-boundary result');
    }
    return const ShutdownActionResult.succeeded(null);
  }

  @override
  Future<ShutdownActionResult<void>> zeroThrust(ShutdownOperation operation) =>
      _void(operation);
  @override
  Future<ShutdownActionResult<void>> exitAutonomousMode(
          ShutdownOperation operation) =>
      _void(operation);
  @override
  Future<ShutdownActionResult<void>> sendDisarm(
          ShutdownOperation operation, TransportCommandAttempt attempt) =>
      _void(operation, attempt);
  @override
  Future<ShutdownActionResult<ShutdownWaitResult>> waitForSafeOrTimeout(
      ShutdownOperation operation, TransportCommandAttempt attempt) async {
    if (onWait != null) {
      phases.add(operation.phase);
      operations.add(operation);
      await onPhase?.call(operation, attempt);
      return onWait!(operation, attempt);
    }
    final result = await _void(operation, attempt);
    return switch (result.kind) {
      ShutdownActionResultKind.succeeded =>
        const ShutdownActionResult.succeeded(ShutdownWaitResult.timedOut),
      ShutdownActionResultKind.failedBeforeEffect =>
        const ShutdownActionResult.failedBeforeEffect(),
      ShutdownActionResultKind.effectUnknown =>
        const ShutdownActionResult.effectUnknown(),
    };
  }

  @override
  Future<ShutdownActionResult<void>> closeTransport(
          ShutdownOperation operation) =>
      _void(operation);
}
