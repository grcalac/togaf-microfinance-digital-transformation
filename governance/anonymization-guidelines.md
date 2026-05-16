# Anonymization Guidelines

## Replace

| Sensitive element | Public replacement |
| --- | --- |
| Real person name | Role or generic label. |
| Real customer data | Synthetic example or remove. |
| Internal system name | Generic component name. |
| IP address or DNS name | Placeholder such as `example.invalid`. |
| AWS account ID or ARN | Placeholder such as `ACCOUNT_ID_PLACEHOLDER`. |
| VPN route or CIDR | RFC 5737 documentation ranges or remove. |
| Log line | Synthetic event summary. |

## Remove

- Credentials and tokens.
- Screenshots of internal tools.
- Production metrics with timestamps.
- Detailed incident records.
- Database schemas from real systems.
- Source code and domain rules.

## Keep

- Methodological evidence.
- Public article-derived summaries.
- Aggregated values already present in the article.
- Conceptual architecture descriptions.
