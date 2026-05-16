output "log_group_name" {
  description = "Reference application log group."
  value       = aws_cloudwatch_log_group.application.name
}
