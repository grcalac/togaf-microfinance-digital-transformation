# Public Repository Security Policy

## Security objective

Protect the institution while preserving academic transparency.

## Not allowed

- Secrets or credentials.
- Real environment variables.
- Real Terraform backend configuration.
- Production account IDs.
- Real networking values.
- Real API payloads.
- Internal architecture screenshots.
- Microservice source code.

## Required controls

- Use `.gitignore` for local values and state files.
- Keep Terraform examples parameterized.
- Use fictitious names and documentation placeholders.
- Run a secret scan before publishing releases.
- Review all diagrams for sensitive topology details.
