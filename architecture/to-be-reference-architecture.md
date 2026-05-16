# TO-BE Reference Architecture

## Purpose

This document describes a public, non-operational reference architecture aligned with the article. It is suitable for academic review but not for direct production deployment.

## Conceptual components

| Component | Public role |
| --- | --- |
| Amazon EKS | Container orchestration for conceptual microservices. |
| Amazon API Gateway | Unified API entry point. |
| Elastic Load Balancing | Multi-zone traffic distribution. |
| AWS CodePipeline | CI/CD orchestration reference. |
| Terraform | Declarative infrastructure definition. |
| CloudWatch | Logs, metrics and alarms. |
| Site-to-site VPN placeholder | Conceptual link to on-premise transactional environment. |

## Target indicators

| Domain | Indicator | AS-IS | TO-BE target |
| --- | --- | --- | --- |
| Technology | Provisioning time | Approximately 3 days | Less than 30 minutes |
| Technology | Critical service availability | Approximately 80 percent | At least 99.9 percent |
| Technology | IaC coverage | Approximately 30 percent | 100 percent of reference environments |
| Applications | Critical service deployment | No standard public evidence | Conceptual microservices represented |
| Governance | Architecture review | No formal evidence | 100 percent before production |
| Security | OWASP control coverage | Partial | At least 80 percent |

## Important limitation

The Terraform code in this repository is intentionally incomplete from a production perspective. It uses placeholders and synthetic names to avoid exposing real institutional infrastructure.
