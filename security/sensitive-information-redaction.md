# Sensitive Information Redaction

## Redaction approach

When a source artifact contains sensitive information, do not commit the original. Create a public summary instead.

## Examples

| Original type | Public alternative |
| --- | --- |
| Internal application inventory | Generic application category table. |
| Real API contract | Statement that contracts are versioned privately. |
| VPN configuration | Conceptual connectivity placeholder. |
| Production log | Aggregated observation without identifiers. |
| Customer record | Remove completely. |

## Rule

Redaction must reduce disclosure risk. Masking a few characters is not enough when structure, identifiers or relationships remain sensitive.
