# Spot-Lock Defaults (Initial Baseline)

These defaults are captured as parity baseline contract inputs for early runtime work. Do not optimize before parity validation.

## Numeric Defaults

| Parameter | Default | Unit | Class |
|---|---:|---|---|
| Deadband radius | 3.0 | meters | parity-required baseline default |
| Pulse ON duration | 1.0 | seconds | parity-required baseline default |
| Pulse OFF duration | 2.0 | seconds | parity-required baseline default |
| Minimum corrective thrust | 4 | % | parity-required baseline default |
| Maximum corrective thrust | 12 | % | parity-required baseline default |

## Tuning Envelope (Modernization-Only)

Allowed only after parity is demonstrated against runtime contract:

| Parameter | Suggested Envelope | Guardrail |
|---|---|---|
| Deadband radius | 2.0m - 5.0m | Must not bypass mission/autonomy gate |
| Pulse ON duration | 0.5s - 2.0s | Duty cycle changes must preserve command timeout safety |
| Pulse OFF duration | 1.0s - 3.0s | Prevent oscillation / flapping |
| Corrective thrust band | 3% - 15% | Keep within actuator-safe and thermal-safe ranges |

## Dependency Reference

Downstream prompts/tasks should cite:
- `.sisyphus/contracts/runtime_parity_contract.json` (machine contract)
- `.sisyphus/contracts/runtime_parity_matrix.md` (human parity matrix)
