## Verdict: **FAIL — safety contracts remain incomplete**

Reviewed immutable candidate `ab1cab309a98f943d7d171e5a122428485133387` against rejected candidate `59ef3b51`.

### Severity-ranked findings

1. **High — Authority is not fused to the physical write**
   - **Observed:** `lib/core/control/thrust_command_gate.dart:61-66` defines `ThrustCommandSink.sendRocker()` as an asynchronous `Future<void>` API and merely documents that implementations must not await before writing.
   - `ThrustDispatchBoundary.send()` checks authority at `:90`, then calls `_write()` at `:94`; `_write()` invokes the sink at `:99`.
   - A valid sink implementation can suspend before touching the transport. Shutdown can latch during that suspension, after which the stale invocation can still write. The type and boundary do not enforce the documented restriction.
   - Existing race coverage uses `RecordingSink`, which records the command synchronously before its optional wait (`test/core/control/thrust_command_gate_test.dart:369-374`). It therefore cannot expose this failure.
   - **Impact:** Original blocker 4 is not fully repaired. Invocation is fused to admission, but actual dispatch is not.
   - **Required correction:** Put the final coordinator revalidation inside the transport-owning sink/port immediately adjacent to the real channel invocation, or expose a synchronous write-initiation primitive whose implementation cannot suspend before dispatch.

2. **High — SAFE confirmation is not bound to the exact command attempt**
   - **Observed:** The coordinator discards the disarm attempt and creates a different attempt for the wait phase at `lib/core/safety/transport_safety_coordinator.dart:586-593`.
   - `_DisarmCorrelation` retains the original attempt at `lib/core/safety/power_sdk_shutdown_actions.dart:307-319`, but `admits()` at `:328-333` never compares attempt identity. It accepts any SAFE-expected wait attempt sharing the lease.
   - The comments at `:324-327` explicitly choose lease-only binding because the attempts differ.
   - **Impact:** The post-command observation boundary and transport-session checks are useful, but the required exact lease/**attempt** correlation is absent. A same-lease replacement attempt can consume another attempt’s correlation.
   - **Required correction:** Preserve one opaque correlation/attempt identity across disarm and wait, and require identity equality in `_DisarmCorrelation.admits()`.

3. **High — Production field authority can be minted without characterization evidence**
   - **Observed:** `ThrustEnvelope.fieldAuthorized()` is a public factory at `lib/core/control/thrust_envelope.dart:97-151`. Arbitrary signed setpoints plus any nonblank string set both `isEvidenceBacked` and `isFieldAuthorized` to true.
   - The production gate trusts those flags at `lib/core/control/thrust_command_gate.dart:168-175`.
   - Tests intentionally construct production authority directly with `"test-only protocol record"` at `test/core/control/thrust_command_gate_test.dart:342-348`.
   - `ThrustCharacterization.fieldEnvelope()` provides an evidence-derived path at `lib/core/control/thrust_characterization.dart:180-187`, but callers are only advised to “prefer” it.
   - **Impact:** The nominal gate denies unevidenced envelopes, but the authority type itself permits unevidenced self-assertion. The invariant requires evidence-backed, field-authorized **measured** setpoints, not caller-declared booleans.
   - **Required correction:** Restrict authority minting to a characterized/provenance-bearing promotion boundary or an explicit privileged authority capability; the general public API must not manufacture field authority from a set and string.

4. **Medium — Bench kill-path attestation is indefinitely reusable**
   - **Observed:** `KillPathAttestation` contains only three nonblank strings and is neither session/run-bound nor revocable (`lib/core/control/bench_probe_capability.dart:164-205`).
   - `BenchProbeGate` retains it for the gate’s lifetime at `:226-241`, while `_refuse()` at `:252-264` never checks whether the attestation is current.
   - **Impact:** A gate constructed while a physical kill path existed remains usable on later leases or after that path is removed. This is retained bench admission surviving a change in its physical precondition.
   - **Required correction:** Bind the attestation to a bounded probe run and transport lease, with explicit expiry/revocation checked at every dispatch.

### Repaired portions

- Signed characterization now keeps forward and reverse separate and derives exact sustainable setpoints.
- Bench and production envelopes/gates are distinct concrete types.
- Zero remains dispatchable.
- Post-command boundaries and transport-session turnover checks materially improve stale-SAFE handling.
- Detached reporter exceptions are contained at `isolated_shutdown_actions.dart:150-155`.
- Cruise raw `0/1` is interpreted as observed START/STOP; the contract has no engagement method, and invalidation latches observations until explicit new-session reset.

### A. Unwired contracts/adapters

The correction is **not yet safe enough to merge as a safety foundation** because dispatch remains enforceable only by documentation, attempt identity is deliberately weakened to lease identity, and public APIs can mint claimed field authority without characterization. Those defects would become architectural obligations for future wiring.

The correction report itself appropriately disclaims production readiness, so it does not make a false readiness claim. The problem is the remaining contract semantics, not the report’s wording.

### B. Known production bypass paths

The candidate does not weaken these paths, but it also does not repair them:

- `lib/features/dashboard/dashboard_screen.dart:597-620` writes rocker commands directly through `PowerSdkBridge`.
- `lib/features/connection/connection_provider.dart:259-292` still interprets observation polarity incorrectly.
- `connection_provider.dart:295-337` still treats command acceptance as physical arm-state confirmation.
- Cruise invalidation/no-resume remains unwired.
- No production `TransportCommandPort` or composition root exists.

These bypasses must remain explicitly tracked as production blockers; merging this candidate cannot be represented as improving live propulsion safety.

### Test gaps

- A sink that suspends before its first real transport effect, followed by synchronous shutdown revocation.
- Mismatched disarm/wait attempt identities on the same lease.
- Compile-time/API proof that arbitrary callers cannot mint field authority.
- Bench attestation reuse after lease change, expiry, or explicit kill-path revocation.
- Production rocker, arm-polarity, acceptance-as-confirmation, and cruise integration tests.
- The unrelated `pubspec.lock` SDK/dependency reshuffle should be reverted or justified separately.

### Verification

- Focused corrected suite: **113 tests passed**.
- `git diff --check`: clean.
- Final HEAD remained `ab1cab309a98f943d7d171e5a122428485133387`.
- Reviewed paths matched the commit.
- No files were created or modified.

```json
{
  "passed": false,
  "security_concerns": [
    "ThrustEnvelope.fieldAuthorized publicly mints evidence-backed, field-authorized production capability from arbitrary signed setpoints and a nonblank string, bypassing ThrustCharacterization."
  ],
  "logic_errors": [
    "ThrustCommandGate checks authority before invoking an asynchronous sink, but the sink can suspend before the real transport write; shutdown or lease revocation can therefore occur before a stale write is physically dispatched.",
    "Disarm SAFE correlation is not bound to the exact TransportCommandAttempt: the coordinator creates a fresh wait attempt and _DisarmCorrelation.admits accepts it using lease and expected-state checks only.",
    "BenchProbeGate retains an unscoped, non-revocable kill-path attestation indefinitely, so a later probe can proceed after the physical precondition has ceased to hold."
  ],
  "suggestions": [
    "Move final authority revalidation into the transport-owning write primitive immediately adjacent to the actual channel invocation.",
    "Carry one opaque attempt/correlation identity across disarm and wait and compare it by identity.",
    "Make field-authority construction inaccessible except through characterized evidence or a narrowly scoped privileged promotion capability.",
    "Bind kill-path attestations to one bounded probe run and exact transport lease, with explicit expiry and revocation.",
    "Keep the production bypass list as release-blocking work and add integration/race tests before wiring these contracts.",
    "Revert or separately justify the unrelated pubspec.lock dependency and SDK-floor changes."
  ],
  "summary": "Fail closed: the candidate improves signed characterization, stale-observation boundaries, bench/production type separation, cruise observation semantics, and reporter containment, but actual dispatch can still occur after authority revocation, SAFE correlation omits exact attempt identity, and production authority is publicly self-mintable."
}
```