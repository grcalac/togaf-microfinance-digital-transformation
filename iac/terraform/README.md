# Terraform Reference

## Purpose

This folder contains a public, academic Terraform reference aligned with the article's TO-BE architecture. It is not intended for production deployment.

## Design rules

- Use placeholder names.
- Do not configure a real backend.
- Do not include `.tfvars` files.
- Do not include secrets.
- Do not include real account IDs, ARNs, CIDRs or endpoints.
- Keep VPN as a placeholder module.
- Treat all values as examples for reviewers.

## Structure

```text
examples/public-reference/
modules/network/
modules/eks/
modules/api-gateway/
modules/observability/
modules/security/
modules/vpn-placeholder/
```

## Validation

Run formatting only:

```powershell
terraform fmt -recursive
```

Do not run `terraform apply` from this repository.
