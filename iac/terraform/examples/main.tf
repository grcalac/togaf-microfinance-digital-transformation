terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "public-togaf-microfinance-reference"
      Purpose     = "academic-review"
      Environment = "example"
    }
  }
}

module "network" {
  source = "../modules/network"

  name       = var.name
  cidr_block = var.example_cidr_block
}

module "security" {
  source = "../modules/security"

  name   = var.name
  vpc_id = module.network.vpc_id
}

module "eks" {
  source = "../modules/eks"

  name              = var.name
  subnet_ids        = module.network.private_subnet_ids
  security_group_id = module.security.cluster_security_group_id
}

module "api_gateway" {
  source = "../modules/api-gateway"

  name = var.name
}

module "observability" {
  source = "../modules/observability"

  name = var.name
}

module "microservices_reference" {
  source = "../modules/microservices-reference"

  name     = var.name
  services = var.conceptual_services
}

module "vpn_placeholder" {
  source = "../modules/vpn-placeholder"

  name = var.name
}
