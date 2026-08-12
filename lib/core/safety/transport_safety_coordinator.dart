import 'dart:async';

/// Pure transport-safety contract. Raw vendor polarity must be translated by a
/// trusted adapter before observations enter this library.
enum ArmSemanticState { safe, arming, armed, disarming, unknown }

enum ArmObservation { safe, armed }

enum ShutdownWaitResult { confirmedSafe, timedOut }

enum TransportSafetyPhase {
  active,
  shutdownZero,
  shutdownExit,
  shutdownDisarm,
  shutdownWait,
  closePending,
  reconciliationRequired,
  closed,
}

enum RecoveryStatus { none, retryableBeforeEffect, reconciliationRequired }

enum ShutdownActionResultKind { succeeded, failedBeforeEffect, effectUnknown }

enum Reconciliation { effectApplied, effectNotApplied }

/// Opaque identity for one verified-ready transport ownership interval.
final class TransportLease {
  const TransportLease._();
}

/// Opaque admission token for exactly one shutdown run on exactly one lease.
/// Admission is synchronous; use [TransportOwnerCapability.waitForShutdown]
/// outside action callbacks to observe that run's terminal result.
final class ShutdownHandle {
  final TransportSafetyCoordinator _owner;
  final TransportLease _lease;
  final Future<void> _completion;
  const ShutdownHandle._(
    this._owner,
    this._lease,
    this._completion,
  );
}

/// Opaque identity for one arm/disarm command attempt.
final class TransportCommandAttempt {
  final TransportLease _lease;
  final ArmObservation _expected;
  final _CallbackEpoch? _callbackEpoch;
  const TransportCommandAttempt._(
    this._lease,
    this._expected, [
    this._callbackEpoch,
  ]);
}

/// Opaque, single-use side-effect identity: lease + intended phase + sequence.
/// Adapters must deduplicate repeated delivery of the same object identity.
final class ShutdownOperation {
  final TransportLease lease;
  final TransportSafetyPhase phase;
  final Object _identity;
  final _CallbackEpoch _callbackEpoch;
  const ShutdownOperation._(
    this.lease,
    this.phase,
    this._identity,
    this._callbackEpoch,
  );
}

/// Explicit effect-boundary result. Only [failedBeforeEffect] is automatically
/// retryable. [effectUnknown] requires trusted reconciliation before progress.
final class ShutdownActionResult<T> {
  final ShutdownActionResultKind kind;
  final T? value;
  const ShutdownActionResult.succeeded(T this.value)
      : kind = ShutdownActionResultKind.succeeded;
  const ShutdownActionResult.failedBeforeEffect()
      : kind = ShutdownActionResultKind.failedBeforeEffect,
        value = null;
  const ShutdownActionResult.effectUnknown()
      : kind = ShutdownActionResultKind.effectUnknown,
        value = null;
  const ShutdownActionResult._copy(this.kind, this.value);
}

final class TransportSafetySnapshot {
  final TransportSafetyPhase phase;
  final RecoveryStatus recovery;
  final ArmSemanticState armState;
  final bool shutdownLatched;
  final ShutdownOperation? reconciliationOperation;
  final Duration actionTimeout;
  final TransportSafetyPhase? lastTimedOutPhase;
  final DateTime? lastTimedOutDeadline;
  const TransportSafetySnapshot._({
    required this.phase,
    required this.recovery,
    required this.armState,
    required this.shutdownLatched,
    required this.reconciliationOperation,
    required this.actionTimeout,
    required this.lastTimedOutPhase,
    required this.lastTimedOutDeadline,
  });
}

abstract interface class TransportSafetyView {
  TransportSafetySnapshot get snapshot;
  bool maySendNonzeroThrust(TransportLease lease);
}

abstract interface class TransportOwnerCapability {
  /// Trusted owner assertion only. Production adapters must call this only
  /// after independently verifying that transport is connected and writable.
  Future<TransportLease> activate();

  /// Synchronously validates [lease], latches shutdown, and admits/reuses one
  /// run. This never waits for action callbacks and is safe to await from one.
  ShutdownHandle disconnect(TransportLease lease);

  /// Observes exactly the admitted run. A failed handle remains failed after a
  /// retry; reconciliation or a retry is resumed by a new [disconnect] handle.
  /// Waiting on the same run from an inherited action Zone fails fast as
  /// defense in depth. External-action deadlines provide the liveness bound.
  Future<void> waitForShutdown(ShutdownHandle handle);
}

/// Opaque authority minted for exactly one [TransportSafetyOwner].
///
/// This object is intentionally not a shutdown-operation field and cannot be
/// constructed by adapters. It is held only by
/// [TransportReconciliationCapability].
final class ReconciliationAuthority {
  final Object _ownerIdentity;
  const ReconciliationAuthority._(this._ownerIdentity);
}

/// Composition-root-only authority for resolving an ambiguous physical effect.
///
/// Scope this wrapper separately from [TransportOwnerCapability], commands,
/// observations, view, and [TransportShutdownActions]. Same-process composition
/// can leak any capability if it deliberately captures this wrapper; preventing
/// that leak is a composition-root scoping obligation.
final class TransportReconciliationCapability {
  final TransportSafetyCoordinator _coordinator;
  final ReconciliationAuthority _authority;
  const TransportReconciliationCapability._(
    this._coordinator,
    this._authority,
  );

  Future<bool> reconcile(
    ShutdownOperation operation,
    Reconciliation outcome,
  ) =>
      _coordinator.reconcile(_authority, operation, outcome);
}

abstract interface class TransportCommandCapability {
  Future<TransportCommandAttempt?> requestArm(TransportLease lease);
  Future<TransportCommandAttempt?> requestDisarm(TransportLease lease);
  Future<bool> commandTimedOut(
    TransportLease lease,
    TransportCommandAttempt attempt,
  );
}

abstract interface class TransportObservationCapability {
  Future<bool> confirm(
    TransportLease lease,
    TransportCommandAttempt attempt,
    ArmObservation observation,
  );
  Future<bool> observe(TransportLease lease, ArmObservation observation);
}

/// Every physical call receives its pre-recorded operation identity. Implementors
/// must report whether failure occurred before any effect or may be ambiguous.
/// Calls that outlive the owner-configured deadline are treated as effectUnknown;
/// their eventual result is drained and ignored.
abstract interface class TransportShutdownActions {
  /// Returned Futures are drained after timeout, including late errors. A
  /// production adapter must separately isolate work it detaches from that
  /// Future (especially [Zone.root] work): the pure coordinator cannot catch
  /// arbitrary detached asynchronous errors.
  Future<ShutdownActionResult<void>> zeroThrust(ShutdownOperation operation);
  Future<ShutdownActionResult<void>> exitAutonomousMode(
    ShutdownOperation operation,
  );
  Future<ShutdownActionResult<void>> sendDisarm(
    ShutdownOperation operation,
    TransportCommandAttempt attempt,
  );
  Future<ShutdownActionResult<ShutdownWaitResult>> waitForSafeOrTimeout(
    ShutdownOperation operation,
    TransportCommandAttempt attempt,
  );
  Future<ShutdownActionResult<void>> closeTransport(
    ShutdownOperation operation,
  );
}

/// Composition-root-only aggregate. Keep the wrappers separately scoped; do
/// not register this aggregate as an application-wide dependency.
final class TransportSafetyOwner {
  static const Duration maxActionTimeout = Duration(hours: 24);
  final TransportSafetyView view;
  final TransportOwnerCapability transport;

  /// Keep this wrapper at the composition root; never pass it to action code.
  final TransportReconciliationCapability reconciliation;
  final TransportCommandCapability commands;
  final TransportObservationCapability observations;
  const TransportSafetyOwner._(
    this.view,
    this.transport,
    this.reconciliation,
    this.commands,
    this.observations,
  );

  factory TransportSafetyOwner.create(
    TransportShutdownActions actions, {
    Duration actionTimeout = const Duration(seconds: 30),
  }) {
    if (actionTimeout <= Duration.zero || actionTimeout > maxActionTimeout) {
      throw ArgumentError.value(
        actionTimeout,
        'actionTimeout',
        'must be greater than zero and no more than $maxActionTimeout',
      );
    }
    final ownerIdentity = Object();
    final authority = ReconciliationAuthority._(ownerIdentity);
    final coordinator = TransportSafetyCoordinator._(
      actions,
      actionTimeout,
      ownerIdentity,
    );
    return TransportSafetyOwner._(
      _ViewCapability(coordinator),
      _OwnerCapability(coordinator),
      TransportReconciliationCapability._(coordinator, authority),
      _CommandCapability(coordinator),
      _ObservationCapability(coordinator),
    );
  }
}

/// Guarded phase machine. State transitions are serialized, but external I/O is
/// always awaited after queue ownership has been released.
final class TransportSafetyCoordinator {
  static final Object _actionShutdownHandleZoneKey = Object();
  static final Object _callbackEpochZoneKey = Object();
  final TransportShutdownActions _actions;
  final Duration _actionTimeout;
  final Object _reconciliationOwnerIdentity;
  TransportSafetyPhase _phase = TransportSafetyPhase.closed;
  RecoveryStatus _recovery = RecoveryStatus.none;
  ArmSemanticState _armState = ArmSemanticState.unknown;
  TransportLease? _lease;
  TransportLease? _lastClosedLease;
  TransportCommandAttempt? _attempt;
  ShutdownOperation? _operation;
  TransportSafetyPhase? _ambiguousPhase;
  bool _shutdownLatched = false;
  int _sequence = 0;
  ShutdownHandle? _activeShutdownHandle;
  TransportSafetyPhase? _lastTimedOutPhase;
  DateTime? _lastTimedOutDeadline;
  _CallbackEpoch? _activeCallbackEpoch;

  bool _queueRunning = false;
  final List<_QueuedMutation<dynamic>> _pending = [];

  TransportSafetyCoordinator._(
    this._actions,
    this._actionTimeout,
    this._reconciliationOwnerIdentity,
  );

  TransportSafetySnapshot get snapshot => TransportSafetySnapshot._(
        phase: _phase,
        recovery: _recovery,
        armState: _armState,
        shutdownLatched: _shutdownLatched,
        reconciliationOperation: _operation,
        actionTimeout: _actionTimeout,
        lastTimedOutPhase: _lastTimedOutPhase,
        lastTimedOutDeadline: _lastTimedOutDeadline,
      );

  bool maySendNonzeroThrust(TransportLease lease) =>
      identical(lease, _lease) &&
      _phase == TransportSafetyPhase.active &&
      !_shutdownLatched &&
      _armState == ArmSemanticState.armed;

  Future<T> _enqueue<T>(T Function() mutation) {
    final item = _QueuedMutation<T>(mutation);
    _pending.add(item);
    scheduleMicrotask(_drain);
    return item.future;
  }

  void _drain() {
    if (_queueRunning || _pending.isEmpty) return;
    _queueRunning = true;
    final item = _pending.removeAt(0);
    try {
      item.complete(item.run());
    } catch (error, stackTrace) {
      item.completeError(error, stackTrace);
    } finally {
      _queueRunning = false;
      if (_pending.isNotEmpty) scheduleMicrotask(_drain);
    }
  }

  Future<TransportLease> activate() {
    final callbackEpoch = _callerCallbackEpoch;
    if (!_epochMayMutate(callbackEpoch)) {
      return Future.error(StateError('Shutdown callback authority is revoked'));
    }
    if (_phase != TransportSafetyPhase.closed ||
        _shutdownLatched ||
        _operation != null ||
        _lease != null) {
      return Future.error(
          StateError('Transport is not eligible for activation'));
    }
    return _enqueue(() {
      if (!_epochMayMutate(callbackEpoch)) {
        throw StateError('Shutdown callback authority is revoked');
      }
      if (_phase != TransportSafetyPhase.closed ||
          _shutdownLatched ||
          _lease != null) {
        throw StateError('Transport is not eligible for activation');
      }
      final lease = TransportLease._();
      _lease = lease;
      _lastClosedLease = null;
      _phase = TransportSafetyPhase.active;
      _armState = ArmSemanticState.unknown;
      _recovery = RecoveryStatus.none;
      return lease;
    });
  }

  Future<TransportCommandAttempt?> requestArm(TransportLease lease) =>
      _request(lease, ArmSemanticState.arming, ArmObservation.armed);
  Future<TransportCommandAttempt?> requestDisarm(TransportLease lease) =>
      _request(lease, ArmSemanticState.disarming, ArmObservation.safe);

  Future<TransportCommandAttempt?> _request(
    TransportLease lease,
    ArmSemanticState state,
    ArmObservation expected,
  ) {
    final callbackEpoch = _callerCallbackEpoch;
    if (!_epochMayMutate(callbackEpoch)) return Future.value(null);
    return _enqueue(() {
      if (!_epochMayMutate(callbackEpoch) ||
          !_activeLease(lease) ||
          _shutdownLatched) {
        return null;
      }
      final attempt = TransportCommandAttempt._(lease, expected);
      _attempt = attempt;
      _armState = state;
      return attempt;
    });
  }

  Future<bool> confirm(
    TransportLease lease,
    TransportCommandAttempt attempt,
    ArmObservation observation,
  ) {
    final callbackEpoch = _callerCallbackEpoch;
    if (!_epochMayMutate(callbackEpoch) || !_attemptMayMutate(attempt)) {
      return Future.value(false);
    }
    return _enqueue(() {
      if (!_epochMayMutate(callbackEpoch) || !_attemptMayMutate(attempt)) {
        return false;
      }
      final shutdownConfirmation = _shutdownLatched &&
          _phase == TransportSafetyPhase.shutdownWait &&
          observation == ArmObservation.safe;
      if (!identical(lease, _lease) ||
          !identical(attempt, _attempt) ||
          !identical(attempt._lease, lease) ||
          attempt._expected != observation ||
          (_shutdownLatched && !shutdownConfirmation)) {
        return false;
      }
      _armState = _semantic(observation);
      if (!shutdownConfirmation) _attempt = null;
      return true;
    });
  }

  Future<bool> observe(TransportLease lease, ArmObservation observation) {
    final callbackEpoch = _callerCallbackEpoch;
    if (!_epochMayMutate(callbackEpoch)) return Future.value(false);
    return _enqueue(() {
      if (!_epochMayMutate(callbackEpoch) ||
          !_activeLease(lease) ||
          _shutdownLatched ||
          _attempt != null) {
        return false;
      }
      _armState = _semantic(observation);
      return true;
    });
  }

  Future<bool> commandTimedOut(
    TransportLease lease,
    TransportCommandAttempt attempt,
  ) {
    final callbackEpoch = _callerCallbackEpoch;
    if (!_epochMayMutate(callbackEpoch) || !_attemptMayMutate(attempt)) {
      return Future.value(false);
    }
    return _enqueue(() {
      if (!_epochMayMutate(callbackEpoch) ||
          !_attemptMayMutate(attempt) ||
          !_activeLease(lease) ||
          _shutdownLatched ||
          !identical(attempt, _attempt) ||
          !identical(attempt._lease, lease)) {
        return false;
      }
      _attempt = null;
      _armState = ArmSemanticState.unknown;
      return true;
    });
  }

  ShutdownHandle disconnect(TransportLease lease) {
    if (!_callbackMayMutate()) {
      throw StateError('Shutdown callback authority is revoked');
    }
    // Admission gate: validate by unforgeable identity and latch synchronously.
    // The latch is monotonic for this lease and is never cleared before CLOSED.
    if (!identical(lease, _lease) || _phase == TransportSafetyPhase.closed) {
      throw StateError('Shutdown admission requires the exact active lease');
    }
    _shutdownLatched = true;
    if (_phase == TransportSafetyPhase.reconciliationRequired) {
      throw StateError('Trusted reconciliation is required');
    }
    final active = _activeShutdownHandle;
    if (active != null) return active;

    final completion = Completer<void>();
    final handle = ShutdownHandle._(
      this,
      lease,
      completion.future,
    );
    _activeShutdownHandle = handle;
    // Admission returns before any action callback can run. Zone context keeps
    // ordinary same-run waits fail-fast as defense in depth; the coordinator's
    // external-action deadline is the non-cooperative liveness boundary.
    scheduleMicrotask(() async {
      try {
        await _driveShutdown(lease, handle);
        completion.complete();
      } catch (error, stackTrace) {
        completion.completeError(error, stackTrace);
      } finally {
        if (identical(_activeShutdownHandle, handle)) {
          _activeShutdownHandle = null;
        }
      }
    });
    return handle;
  }

  Future<void> waitForShutdown(ShutdownHandle handle) {
    if (!_callbackMayMutate()) {
      return Future.error(StateError('Shutdown callback authority is revoked'));
    }
    if (!identical(handle._owner, this) ||
        (!identical(handle._lease, _lease) &&
            !identical(handle._lease, _lastClosedLease))) {
      return Future.error(StateError('Stale or forged shutdown handle'));
    }
    if (identical(Zone.current[_actionShutdownHandleZoneKey], handle)) {
      return Future.error(
        StateError('A shutdown action callback cannot wait for its own run'),
      );
    }
    return handle._completion;
  }

  Future<void> _driveShutdown(
    TransportLease lease,
    ShutdownHandle handle,
  ) async {
    while (identical(lease, _lease) && _phase != TransportSafetyPhase.closed) {
      if (_phase == TransportSafetyPhase.active) {
        await _enqueue(() {
          if (_phase != TransportSafetyPhase.active) return;
          _attempt = null;
          _phase = _armState == ArmSemanticState.safe
              ? TransportSafetyPhase.closePending
              : TransportSafetyPhase.shutdownZero;
          _recovery = RecoveryStatus.none;
        });
        continue;
      }

      final phase = _phase;
      if (phase == TransportSafetyPhase.reconciliationRequired) {
        throw StateError('Trusted reconciliation is required');
      }
      final operation = await _beginOperation(lease, phase);
      _InvocationOutcome outcome;
      try {
        outcome = await _invoke(operation, handle);
      } catch (_) {
        // An exception does not prove the physical effect did not occur.
        // Convert it to ambiguity; adapters that know no effect occurred must
        // return failedBeforeEffect explicitly.
        outcome = const _InvocationOutcome(
          ShutdownActionResult<Object?>.effectUnknown(),
          timedOutDeadline: null,
        );
      }
      final result = outcome.result;
      final committed = await _commitOperation(operation, outcome);
      if (!committed) throw StateError('Shutdown operation became stale');
      if (result.kind == ShutdownActionResultKind.failedBeforeEffect) {
        throw StateError('${phase.name} failed before effect');
      }
      if (result.kind == ShutdownActionResultKind.effectUnknown) {
        throw StateError('${phase.name} effect is unknown');
      }
    }
  }

  Future<ShutdownOperation> _beginOperation(
    TransportLease lease,
    TransportSafetyPhase phase,
  ) =>
      _enqueue(() {
        if (!identical(lease, _lease) ||
            _phase != phase ||
            _operation != null) {
          throw StateError('Cannot begin stale shutdown phase');
        }
        final callbackEpoch = _CallbackEpoch();
        final operation =
            ShutdownOperation._(lease, phase, ++_sequence, callbackEpoch);
        _operation = operation; // intent recorded before external I/O
        _activeCallbackEpoch = callbackEpoch;
        _recovery = RecoveryStatus.none;
        if (phase == TransportSafetyPhase.shutdownDisarm) {
          _attempt = TransportCommandAttempt._(
            lease,
            ArmObservation.safe,
            callbackEpoch,
          );
          _armState = ArmSemanticState.disarming;
        } else if (phase == TransportSafetyPhase.shutdownWait) {
          // Fresh callback-adapter observation authority: never reuse the
          // disarm attempt after phase advancement or reconciliation.
          _attempt = TransportCommandAttempt._(
            lease,
            ArmObservation.safe,
            callbackEpoch,
          );
        }
        return operation;
      });

  Future<_InvocationOutcome> _invoke(
    ShutdownOperation operation,
    ShutdownHandle handle,
  ) {
    final deadline = DateTime.now().add(_actionTimeout);
    final completion = Completer<_InvocationOutcome>();
    // Install the liveness boundary before invoking adapter code and create it
    // in the root Zone so callback Zone overrides cannot suppress the timer.
    final timer = Zone.root.createTimer(_actionTimeout, () {
      if (!completion.isCompleted) {
        operation._callbackEpoch.revoke();
        completion.complete(
          _InvocationOutcome(
            const ShutdownActionResult<Object?>.effectUnknown(),
            timedOutDeadline: deadline,
          ),
        );
      }
    });
    final callback = runZoned<Future<ShutdownActionResult<Object?>>>(
      () async {
        switch (operation.phase) {
          case TransportSafetyPhase.shutdownZero:
            return _erase(await _actions.zeroThrust(operation));
          case TransportSafetyPhase.shutdownExit:
            return _erase(await _actions.exitAutonomousMode(operation));
          case TransportSafetyPhase.shutdownDisarm:
            return _erase(await _actions.sendDisarm(operation, _attempt!));
          case TransportSafetyPhase.shutdownWait:
            final result =
                await _actions.waitForSafeOrTimeout(operation, _attempt!);
            return ShutdownActionResult<Object?>._copy(
              result.kind,
              result.value,
            );
          case TransportSafetyPhase.closePending:
            return _erase(await _actions.closeTransport(operation));
          case TransportSafetyPhase.active:
          case TransportSafetyPhase.reconciliationRequired:
          case TransportSafetyPhase.closed:
            throw StateError('Phase has no external action');
        }
      },
      zoneValues: {
        _actionShutdownHandleZoneKey: handle,
        _callbackEpochZoneKey: operation._callbackEpoch,
      },
    );

    // Always attach both terminal handlers. Once the deadline wins, callback
    // success and failure are drained here and cannot reach coordinator state.
    callback.then<void>(
      (result) {
        if (!completion.isCompleted) {
          operation._callbackEpoch.revoke();
          timer.cancel();
          completion.complete(_InvocationOutcome.notTimedOut(result));
        }
      },
      onError: (Object error, StackTrace stackTrace) {
        if (!completion.isCompleted) {
          operation._callbackEpoch.revoke();
          timer.cancel();
          completion.completeError(error, stackTrace);
        }
      },
    );
    return completion.future.whenComplete(timer.cancel);
  }

  static ShutdownActionResult<Object?> _erase(
          ShutdownActionResult<void> result) =>
      ShutdownActionResult<Object?>._copy(result.kind, null);

  Future<bool> _commitOperation(
    ShutdownOperation operation,
    _InvocationOutcome outcome,
  ) =>
      _enqueue(() {
        final result = outcome.result;
        if (!identical(operation, _operation) ||
            !identical(operation.lease, _lease) ||
            operation._identity != _sequence ||
            _phase != operation.phase) {
          return false;
        }
        if (result.kind == ShutdownActionResultKind.failedBeforeEffect) {
          _operation = null;
          _recovery = RecoveryStatus.retryableBeforeEffect;
          return true;
        }
        if (result.kind == ShutdownActionResultKind.effectUnknown) {
          if (outcome.timedOutDeadline != null) {
            _lastTimedOutPhase = operation.phase;
            _lastTimedOutDeadline = outcome.timedOutDeadline;
          }
          _ambiguousPhase = operation.phase;
          _phase = TransportSafetyPhase.reconciliationRequired;
          _recovery = RecoveryStatus.reconciliationRequired;
          return true;
        }
        _operation = null;
        _recovery = RecoveryStatus.none;
        _advanceAfterApplied(operation.phase, result.value);
        return true;
      });

  Future<bool> reconcile(
    ReconciliationAuthority authority,
    ShutdownOperation operation,
    Reconciliation outcome,
  ) {
    if (!identical(authority._ownerIdentity, _reconciliationOwnerIdentity)) {
      return Future.value(false);
    }
    return _enqueue(() {
      if (!identical(authority._ownerIdentity, _reconciliationOwnerIdentity) ||
          _phase != TransportSafetyPhase.reconciliationRequired ||
          !identical(operation, _operation) ||
          !identical(operation.lease, _lease) ||
          operation._identity != _sequence ||
          _ambiguousPhase != operation.phase) {
        return false;
      }
      final phase = _ambiguousPhase!;
      _operation = null;
      _ambiguousPhase = null;
      _recovery = RecoveryStatus.none;
      if (outcome == Reconciliation.effectApplied) {
        _advanceAfterApplied(phase, null);
      } else {
        _phase = phase;
        _recovery = RecoveryStatus.retryableBeforeEffect;
        if (phase == TransportSafetyPhase.shutdownDisarm) {
          _attempt = null;
          _armState = ArmSemanticState.unknown;
        }
      }
      return true;
    });
  }

  void _advanceAfterApplied(TransportSafetyPhase phase, Object? value) {
    switch (phase) {
      case TransportSafetyPhase.shutdownZero:
        _phase = TransportSafetyPhase.shutdownExit;
        return;
      case TransportSafetyPhase.shutdownExit:
        _phase = TransportSafetyPhase.shutdownDisarm;
        return;
      case TransportSafetyPhase.shutdownDisarm:
        _attempt = null;
        _phase = TransportSafetyPhase.shutdownWait;
        return;
      case TransportSafetyPhase.shutdownWait:
        _attempt = null;
        _armState = value == ShutdownWaitResult.confirmedSafe ||
                _armState == ArmSemanticState.safe
            ? ArmSemanticState.safe
            : ArmSemanticState.unknown;
        _phase = TransportSafetyPhase.closePending;
        return;
      case TransportSafetyPhase.closePending:
        _lastClosedLease = _lease;
        _lease = null;
        _attempt = null;
        _armState = ArmSemanticState.unknown;
        _phase = TransportSafetyPhase.closed;
        // Monotonic for the lease: cleared only after lease is invalidated/CLOSED.
        _shutdownLatched = false;
        return;
      case TransportSafetyPhase.active:
      case TransportSafetyPhase.reconciliationRequired:
      case TransportSafetyPhase.closed:
        throw StateError('Cannot advance $phase');
    }
  }

  bool _activeLease(TransportLease lease) =>
      identical(lease, _lease) && _phase == TransportSafetyPhase.active;

  _CallbackEpoch? get _callerCallbackEpoch =>
      Zone.current[_callbackEpochZoneKey] as _CallbackEpoch?;

  bool _callbackMayMutate() => _epochMayMutate(_callerCallbackEpoch);

  bool _epochMayMutate(_CallbackEpoch? epoch) =>
      epoch == null ||
      (!epoch.revoked && identical(epoch, _activeCallbackEpoch));

  static bool _attemptMayMutate(TransportCommandAttempt attempt) =>
      attempt._callbackEpoch?.revoked != true;

  static ArmSemanticState _semantic(ArmObservation observation) =>
      observation == ArmObservation.safe
          ? ArmSemanticState.safe
          : ArmSemanticState.armed;
}

final class _CallbackEpoch {
  bool revoked = false;
  void revoke() => revoked = true;
}

final class _InvocationOutcome {
  final ShutdownActionResult<Object?> result;
  final DateTime? timedOutDeadline;
  const _InvocationOutcome(this.result, {required this.timedOutDeadline});
  const _InvocationOutcome.notTimedOut(this.result) : timedOutDeadline = null;
}

final class _QueuedMutation<T> {
  final T Function() run;
  final Completer<T> _completer = Completer<T>();
  _QueuedMutation(this.run);
  Future<T> get future => _completer.future;
  void complete(T value) => _completer.complete(value);
  void completeError(Object error, StackTrace stackTrace) =>
      _completer.completeError(error, stackTrace);
}

final class _ViewCapability implements TransportSafetyView {
  final TransportSafetyCoordinator _coordinator;
  const _ViewCapability(this._coordinator);
  @override
  TransportSafetySnapshot get snapshot => _coordinator.snapshot;
  @override
  bool maySendNonzeroThrust(TransportLease lease) =>
      _coordinator.maySendNonzeroThrust(lease);
}

final class _OwnerCapability implements TransportOwnerCapability {
  final TransportSafetyCoordinator _coordinator;
  const _OwnerCapability(this._coordinator);
  @override
  Future<TransportLease> activate() => _coordinator.activate();
  @override
  ShutdownHandle disconnect(TransportLease lease) =>
      _coordinator.disconnect(lease);
  @override
  Future<void> waitForShutdown(ShutdownHandle handle) =>
      _coordinator.waitForShutdown(handle);
}

final class _CommandCapability implements TransportCommandCapability {
  final TransportSafetyCoordinator _coordinator;
  const _CommandCapability(this._coordinator);
  @override
  Future<bool> commandTimedOut(
          TransportLease lease, TransportCommandAttempt attempt) =>
      _coordinator.commandTimedOut(lease, attempt);
  @override
  Future<TransportCommandAttempt?> requestArm(TransportLease lease) =>
      _coordinator.requestArm(lease);
  @override
  Future<TransportCommandAttempt?> requestDisarm(TransportLease lease) =>
      _coordinator.requestDisarm(lease);
}

final class _ObservationCapability implements TransportObservationCapability {
  final TransportSafetyCoordinator _coordinator;
  const _ObservationCapability(this._coordinator);
  @override
  Future<bool> confirm(TransportLease lease, TransportCommandAttempt attempt,
          ArmObservation observation) =>
      _coordinator.confirm(lease, attempt, observation);
  @override
  Future<bool> observe(TransportLease lease, ArmObservation observation) =>
      _coordinator.observe(lease, observation);
}
