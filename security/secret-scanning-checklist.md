# Secret Scanning Checklist

Before publishing or tagging a release:

1. Search for common secret patterns.
2. Confirm no `.tfstate` files are present.
3. Confirm no `.tfvars` files are present.
4. Confirm no `.env` files are present.
5. Confirm no private keys are present.
6. Review diagrams for operational topology details.
7. Review Terraform examples for real account or network values.

Suggested local checks:

```powershell
rg -n "AKIA|SECRET|TOKEN|PASSWORD|BEGIN PRIVATE KEY|arn:aws|[0-9]{12}" .
rg --files | rg "\.tfstate|\.tfvars|\.env|\.pem|\.key|credentials"
```
