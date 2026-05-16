# Public Risk Register

This risk register is derived from the article and expressed at a public, non-operational level.

| ID | Risk | Reference component | Level | Public control |
| --- | --- | --- | --- | --- |
| R1 | Skills gap in IaC and container orchestration. | CI/CD, EKS, Terraform | High | Training plan, guided adoption and measurable IaC coverage. |
| R2 | Sensitive data exposure during modernization. | EKS, private connectivity | High | Encryption, least privilege and centralized audit logs. |
| R3 | Regulatory non-compliance due to inappropriate cloud exposure. | VPC, private subnets | High | Private network boundaries and deployment checks. |
| R4 | Service degradation during API transition. | API Gateway, EKS | High | Canary release, rollback and monitoring thresholds. |
| R5 | Residual coupling between conceptual services. | API contracts | Medium | Versioned contracts and pipeline validation. |
| R6 | Latency over private connectivity. | VPN placeholder | Medium | Latency monitoring and traffic prioritization. |
| R7 | Configuration drift. | Terraform | Medium | Drift detection and manual-change restrictions. |
| R8 | Cost overrun. | EKS, load balancing | Low | Budget alerts and autoscaling policies. |

## Disclosure note

Controls are intentionally described at a safe level. Exact security settings, network routes and operational thresholds belong in private implementation repositories.
