# AS-IS Architecture Summary

## Domain view

| Domain | AS-IS observation | Public gap |
| --- | --- | --- |
| Business | Critical savings and credit processes. | Lack of systematic cycle-time and SLA evidence. |
| Data | Sensitive transactional data remains on-premise. | Need for stronger access traceability. |
| Applications | Legacy core plus digital channels and integration layers. | Heterogeneous integration and coupling risk. |
| Technology | Hybrid infrastructure with partial DevOps/IaC practices. | Manual provisioning and limited IaC coverage. |
| Governance | Architecture and security references exist. | Lack of formal review and measurable controls. |

## Selected gap

The IMSA prioritization selects IaC for critical microservice-based processes as the highest-priority gap, with a score of `4.35`.

## Disclosure boundary

This summary intentionally omits operational details such as internal names, deployment topology, credentials, routes, IP addresses and private service contracts.
