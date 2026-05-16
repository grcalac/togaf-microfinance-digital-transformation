# Conceptual Microservices Catalog

This catalog documents the microservices referenced by the article at a conceptual level only. It does not include source code, algorithms, business rules, API contracts, payloads, database schemas or deployment details from the entity.

| Conceptual name | Domain | ICA | Public responsibility | Included in repo |
| --- | --- | ---: | --- | --- |
| `cla-ahorros-solicitud-apertura` | Savings | 4.83 | Account-opening request flow. | Description only. |
| `cla-creditos-evaluacion-crediticia` | Credit | 4.82 | Credit evaluation flow. | Description only. |
| `cla-creditos-desembolso-crediticio` | Credit | 4.55 | Credit disbursement flow. | Description only. |
| `cla-ahorros-confirmacion-apertura` | Savings | 4.16 | Account-opening confirmation flow. | Description only. |

## Excluded content

- Microservice source code.
- Internal endpoints.
- Real OpenAPI contracts.
- Domain rules.
- Data model.
- Container images.
- Kubernetes manifests tied to production behavior.
- Secrets, tokens or configuration values.

## Public architecture expectation

Each conceptual service should be governed by:

- versioned contracts in a private implementation repository;
- OWASP API controls;
- CI/CD validation;
- logs and metrics without sensitive data;
- architecture review before release.
