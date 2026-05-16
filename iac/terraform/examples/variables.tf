variable "aws_region" {
  description = "Example AWS region. This is not tied to a real institutional deployment."
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Synthetic name used for public reference resources."
  type        = string
  default     = "public-togaf-reference"
}

variable "example_cidr_block" {
  description = "Documentation-only CIDR block. Replace only in private implementation repositories."
  type        = string
  default     = "10.10.0.0/16"
}

variable "conceptual_services" {
  description = "Public conceptual services from the article. These are not source-code repositories or production workloads."
  type = map(object({
    domain = string
    ica    = number
  }))
  default = {
    "cla-ahorros-solicitud-apertura" = {
      domain = "savings"
      ica    = 4.83
    }
    "cla-creditos-evaluacion-crediticia" = {
      domain = "credit"
      ica    = 4.82
    }
    "cla-creditos-desembolso-crediticio" = {
      domain = "credit"
      ica    = 4.55
    }
    "cla-ahorros-confirmacion-apertura" = {
      domain = "savings"
      ica    = 4.16
    }
  }
}
