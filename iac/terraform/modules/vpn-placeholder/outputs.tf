output "placeholder_name" {
  description = "Reference placeholder name for conceptual private connectivity."
  value       = aws_ssm_parameter.vpn_placeholder.name
}
