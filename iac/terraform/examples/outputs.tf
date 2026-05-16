output "reference_vpc_id" {
  description = "Reference VPC ID from the example module."
  value       = module.network.vpc_id
}

output "reference_cluster_name" {
  description = "Reference EKS cluster name."
  value       = module.eks.cluster_name
}

output "reference_api_id" {
  description = "Reference API Gateway ID."
  value       = module.api_gateway.api_id
}

output "conceptual_service_log_groups" {
  description = "Reference log groups for conceptual services only."
  value       = module.microservices_reference.log_group_names
}
