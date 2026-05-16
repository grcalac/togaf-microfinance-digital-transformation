# Publication Checklist

Use this checklist before each commit.

| Check | Required answer |
| --- | --- |
| Does the file contain secrets, tokens or credentials? | No |
| Does the file contain real customer, employee or transaction data? | No |
| Does the file expose internal IPs, DNS, ARNs or account IDs? | No |
| Does the file include source code of microservices? | No |
| Does the file reveal real business rules or scoring logic? | No |
| Does the file expose production topology or security controls in exploitable detail? | No |
| Is the content derived from the article, anonymized or synthetic? | Yes |
| Is the academic purpose clear? | Yes |

## Commit note

If any answer is not compliant, do not commit the file. Redact, summarize or remove the content.
