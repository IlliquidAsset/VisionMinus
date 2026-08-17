## Verdict: **FAIL — safety logic blockers**

Reviewed immutable candidate `59ef3b51cfc4eea2f6f5706ba0493e0fdc3c67f7` against base `b80b2467`. The candidate is primarily a set of contracts and adapters; it does **not** wire the new safety model into production propulsion or connection behavior.

### 1. **High — Generic thrust gate admits nonzero thrust with an uncharacterized, bench-only envelope**

**Observed evidence**

- `lib/core/control/thrust_command_gate.dart:51-63` admits nonzero whenever coordinator authority exists and `envelope.permits(command)` is true.
- It never checks `isEvidenceBacked` or `isFieldAuthorized`.
- `lib/core/control/thrust_envelope.dart:52-70` creates `benchProbe` envelopes explicitly marked:
  - `isEvidenceBacked: false`
  - `isFieldAuthorized: false`
- Nevertheless, `ThrustEnvelope.permits()` at `thrust_envelope.dart:100-103` authorizes their nonzero magnitudes.
- The intended bypass is codified by `test/core/control/thrust_command_gate_test.dart:89-102`, which expects an armed coordinator plus an unevidenced bench envelope to admit command `5`.

This violates the required invariant that nonzero thrust be denied absent a **characterized** envelope. If bench probing is a deliberate exception, it needs a separate, narrowly scoped bench-operation capability with an independent kill-path precondition—not the generic thrust gate.

**Required tests**

- Armed coordinator + `benchProbe` must be denied by the normal command gate.
- Bench-only and field-authorized contexts must be distinct capabilities.
- Every non-evidence-backed envelope must deny nonzero through the production/general gate.

---

### 2. **High — A stale SAFE callback can be accepted as current disarm confirmation**

**Inferred from deterministic code**

- `TransportCommandPort.nextArmObservation()` at `lib/core/safety/power_sdk_shutdown_actions.dart:35-37` receives only a timeout. It has no lease, callback generation, operation ID, timestamp floor, or command-attempt correlation.
- `waitForSafeOrTimeout()` receives a `TransportCommandAttempt` at lines `109-112`, but never uses it.
- Any returned SAFE decision immediately yields `ShutdownWaitResult.confirmedSafe` at lines `115-126`.

Therefore, a SAFE event already buffered from before the disarm command—or from a prior transport session—can satisfy the current shutdown wait. The coordinator’s callback epoch does not fix this because the port bypasses coordinator observation admission and returns a preclassified value directly.

**Required tests**

- Queue SAFE before `sendDisarm`; it must not confirm the later attempt.
- A prior-lease SAFE observation must be rejected after reconnect.
- Only observations captured after the current attempt’s observation boundary may confirm it.
- Test callback arrival races at disarm→wait phase transition.

---

### 3. **High — “Sustainable floor” evidence authorizes unmeasured lower values and the opposite direction**

**Observed evidence**

- `ThrustObservation.commandMagnitude` is unsigned at `lib/core/control/thrust_characterization.dart:10-11`.
- A measured sustainable floor becomes `maxAuthorizedMagnitude` at `lib/core/control/thrust_envelope.dart:79-97`.
- `permits()` uses absolute magnitude and allows every value `<= maxAuthorizedMagnitude` at lines `100-103`.

Thus, one forward sustained observation at `18` authorizes:

- `+1` through `+17`, despite those values not being established sustainable;
- `-1` through `-18`, despite reverse behavior never being measured.

This contradicts the characterization comments at `thrust_characterization.dart:70-73`, which correctly state that onset and sustained operation must not be inferred. A measured minimum is a **lower bound for sustainable operation**, not a maximum-authorized band beginning at one.

**Required tests**

- A characterized floor at 18 must not authorize 1–17 unless separately evidenced.
- Forward evidence must not authorize reverse thrust.
- Characterization should represent signed direction and a measured interval/set, not only an unsigned maximum.
- Failed/stalling observations below the floor must remain explicitly denied.

---

### 4. **Medium — Admission is separable from sending, permitting stale authority use**

**Inferred from API design**

`ThrustCommandGate.admit()` at `lib/core/control/thrust_command_gate.dart:51-64` returns a reusable value after a point-in-time coordinator check. It neither executes the command nor returns a single-use authority tied atomically to the send. A caller can:

1. receive `ThrustAdmission.admitted`;
2. have shutdown synchronously latch or the lease invalidate;
3. send later using the stale admission.

For “current coordinator authority,” checking and dispatch must share one controlled boundary, or the send must revalidate immediately inside an owner-controlled command port.

**Required tests**

- Admit, invalidate/disconnect, then attempt dispatch: no nonzero write may reach the port.
- Race command dispatch against shutdown admission.
- An admission from one lease must never authorize a later lease.

---

## Production/readiness assessment

The candidate does **not** provide production-safe behavior yet:

- `ThrustCommandGate`, `PowerSdkShutdownActions`, `IsolatedShutdownActions`, `CruiseStateContract`, and `W4ArmPolarity` have no production call sites outside tests.
- Existing rocker transmission still bypasses the new gate at `lib/features/dashboard/dashboard_screen.dart:597-620`.
- Existing arm observation remains polarity-inverted at `lib/features/connection/connection_provider.dart:259-276`, where `status == 1` is treated as armed although the new translator says observation `1` is SAFE.
- Existing acceptance handling still declares physical confirmation at `connection_provider.dart:295-337`, including setting `isArmed` from `set_arm_result == 0`.
- Cruise callback polarity/key is corrected in the Kotlin event bridge at `PowerSdkEventHandler.kt:390-398`, but no Dart production consumer uses `CruiseStateContract`; actual invalidation and no-resume behavior are therefore unimplemented.
- The “concrete shutdown sequence” description in `power_sdk_shutdown_actions.dart:43-48` is only concrete relative to an abstract `TransportCommandPort`; no production port or composition-root wiring exists.

Accordingly, this is at most an **unwired prototype contract layer**, not a production-ready control or shutdown foundation. The unit-name invariant is handled correctly: rocker commands are called dimensionless firmware units, while “voltage” references elsewhere are battery telemetry.

## Shutdown isolation notes

The operation decorator does deduplicate the exact `ShutdownOperation` object using an `Expando` at `isolated_shutdown_actions.dart:64-66,103-135`, and tests cover in-flight, completed, and failed replay. Ambiguous ordinary errors are classified fail-closed.

Additional missing test:

- `onDetachedFailure` throwing should not allow a detached transport failure to escape the isolation boundary; the handler is invoked directly at `isolated_shutdown_actions.dart:126-132`.

## Verification

- Focused control/safety suite: **64 tests passed**.
- `git diff --check`: clean.
- Candidate diff hash remained stable: `4cd373474d7062c6d4e68ecab98e6140ebbe9c8a34d73ffade2b1aab12167ae9`.
- No files were created or modified by this review.
- Worktree had pre-existing/unattributed untracked `android/app/.cxx/` both before and after verification; tracked candidate content remained unchanged.

```json
{"passed":false,"security_concerns":[],"logic_errors":["The generic thrust gate admits nonzero commands through benchProbe envelopes that are explicitly not evidence-backed or field-authorized.","Shutdown SAFE confirmation is not correlated with the current lease, operation, command attempt, callback generation, or post-command time boundary, so stale observations can confirm disarm.","A measured unsigned sustainable floor is represented as a maximum magnitude, authorizing unmeasured sub-floor values and the unmeasured opposite direction.","Thrust admission is a separable point-in-time decision that can be retained and used after coordinator authority is revoked."],"suggestions":["Separate normal/field command authority from a narrowly scoped bench-probe capability and deny all non-evidence-backed envelopes in the generic gate.","Bind arm observations to the active lease and current disarm attempt, discarding buffered or pre-attempt callbacks.","Represent characterized thrust as signed, direction-specific measured intervals or explicit permitted setpoints rather than an unsigned maximum.","Move admission and physical dispatch into one coordinator-owned command boundary with revalidation at send time.","Wire arm polarity, shutdown actions, cruise invalidation, and thrust gating through the production composition root before making readiness claims.","Add integration and race tests for stale callbacks, disconnect-versus-send, production rocker gating, and a throwing detached-failure reporter."],"summary":"Fail closed. The candidate has useful polarity and adapter concepts, but its generic gate allows unevidenced nonzero thrust, its characterization envelope over-authorizes commands, and shutdown can accept stale SAFE observations. It is not wired into production; existing unsafe arm and rocker paths remain active."}
```