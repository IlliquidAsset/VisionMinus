# VisionMinus Decisions

## 2026-08-12 — Continue the Flutter/Kotlin modernization
**Decision:** Treat `main` as the canonical modernization path, not the Smali tree.
**Reason:** `main` already promotes a Flutter app to repository root while retaining native PowerSDK binaries/interfaces through Kotlin/JNI. This directly addresses maintainability without discarding behavior evidence.
**Rejected:** Restarting from Smali; rewriting vendor native libraries.
**Reversal:** Historical Smali branches remain untouched and can be consulted or checked out.

## 2026-08-12 — Preserve Fable 5 as provenance, not assumed truth
**Decision:** Audit `claude/fix-ai-gps-navigation-bWTSP` and its ancestry, but do not merge or overwrite it blindly.
**Reason:** `main` contains later promotion/review commits, while the Fable candidate records substantial GPS/spot-lock work and evidence.
**Reversal:** Any verified missing behavior can be ported through a reviewed branch.

## 2026-08-12 — Real-device evidence is mandatory
**Decision:** Cloud analyze/test results and static review are subsystem evidence only.
**Reason:** The application controls physical hardware through an Android/Kotlin/JNI/USB/Wi-Fi path.
**Reversal:** None for readiness claims.

## 2026-08-12 — Safety state requires an authority boundary
**Decision:** Replace the mutable-machine API with a read-only authoritative state object plus a narrowly held session authority. Thrust policy consumes the authoritative object, never a detached enum. State confirmations require opaque session and command-attempt identity.
**Reason:** Two fail-closed reviews showed that private fields do not protect invariants when public lifecycle and confirmation methods can manufacture the same state.
**Rejected:** Further setter-hiding patches on the current public mutator design.
**Reversal:** Only if a stronger capability model is proven by tests and independent review.

## 2026-08-12 — Transport activity is part of safety state
**Decision:** An arm session explicitly distinguishes active from detached. Detachment invalidates the session before physical teardown, immediately denies thrust, and makes repeated disconnect a no-op. Unsolicited observations are rejected while a command attempt is active.
**Reason:** Opaque identity alone cannot prevent same-session ordering errors or stale authorization after transport teardown.
**Rejected:** Inferring connection activity from a non-null session or accepting unsolicited observations over in-flight commands.

## 2026-08-12 — One coordinator owns transport safety
**Decision:** Replace separate arm and shutdown serialization queues with one transport safety coordinator. It owns the active transport lease, safety state, command attempts, trusted observations, shutdown latch, physical teardown, and retryable close-pending state.
**Reason:** Separate queues allow session rotation and observations to interleave across awaited shutdown actions. Invalidating safety before physical teardown also requires an explicit close-pending recovery state when teardown fails.
**Rejected:** More local synchronization patches between independent lifecycle and shutdown objects.

## 2026-08-12 — Serialize state, never external I/O
**Decision:** The transport safety coordinator is a guarded phase machine. Shutdown latches synchronously at the public boundary. Internal phase transitions serialize, but external transport actions run outside the state lock and return through opaque phase-operation identities. Potentially ambiguous side effects require idempotent operation IDs or explicit reconciliation before retry.
**Reason:** Awaiting external callbacks while holding the coordinator queue deadlocks callback confirmation and turns partial physical success into unsafe blind replay.
**Rejected:** One monolithic queued shutdown transaction and unqualified retries after thrown side effects.

## 2026-08-12 — Separate shutdown admission from completion
**Decision:** A disconnect request synchronously latches shutdown and returns an opaque handle without joining the shutdown run. Completion is observed through a separate handle-bound wait API.
**Reason:** Returning the in-flight shutdown future to a reentrant transport callback creates a self-join deadlock.
**Rejected:** Context-sensitive guesses about whether a disconnect caller is external or reentrant.

## 2026-08-12 — Completion self-wait fails fast
**Decision:** External shutdown actions execute in a private callback context bound to the active shutdown handle. `waitForShutdown` rejects that exact handle from inside its own callback context before returning a Future.
**Reason:** Handle opacity and documentation cannot prevent a callback from capturing and awaiting its own completion.
**Rejected:** Relying on adapter discipline for a permanent-deadlock condition.

## 2026-08-12 — External actions have coordinator deadlines
**Decision:** Every external transport action has a coordinator-enforced deadline. A callback that hangs, self-waits, or escapes callback context is classified as `effectUnknown`; the operation enters reconciliation and any late result is stale and cannot commit.
**Reason:** Dart callback code can escape Zone context through `Zone.root`, so caller-context detection cannot be the sole liveness boundary.
**Rejected:** Claiming in-process self-wait is structurally impossible.

## 2026-08-12 — Timeout revokes operation authority
**Decision:** Deadline expiry revokes the timed-out operation's command/confirmation authority. Reconciliation may advance physical phase state, but it never reuses an attempt exposed to abandoned callback code. Timeouts are positive and capped to an overflow-safe maximum.
**Reason:** Quarantining a callback result is insufficient if abandoned code can still call capability methods with a retained valid attempt.
**Rejected:** Retaining the same attempt identity across timed-out disarm reconciliation.

## 2026-08-12 — Reconciliation requires separate authority
**Decision:** `ShutdownOperation` identifies the ambiguous effect but never authorizes deciding it. Reconciliation requires a separate opaque capability issued to the composition-root owner and never supplied to shutdown callbacks.
**Reason:** Callback provenance derived from Dart Zone context can be stripped with `Zone.root`; absence of context cannot mean trusted authority.
**Rejected:** Allowing any caller holding an operation object to reconcile it.

## 2026-08-12 — Production adapters require error isolation
**Decision:** Concrete shutdown adapters must run inside an owned error-isolation boundary that captures detached asynchronous failures. The pure coordinator cannot contain arbitrary work deliberately spawned into `Zone.root`.
**Reason:** Dart in-process callback code can escape a child Zone; containment therefore belongs to the adapter execution boundary, not a false coordinator guarantee.
**Gate:** Pure contract may merge only after stale authority is revoked and timeout bounds are safe. Production wiring remains blocked until adapter isolation is implemented and tested.
