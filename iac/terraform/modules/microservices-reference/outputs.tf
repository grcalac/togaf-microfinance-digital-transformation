output "log_group_names" {
  description = "Reference log group names for conceptual services."
  value       = { for key, group in aws_cloudwatch_log_group.service : key => group.name }
}
