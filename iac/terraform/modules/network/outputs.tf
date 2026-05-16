output "vpc_id" {
  description = "Reference VPC ID."
  value       = aws_vpc.this.id
}

output "private_subnet_ids" {
  description = "Reference private subnet IDs."
  value       = aws_subnet.private[*].id
}
