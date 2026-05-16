variable "name" {
  description = "Synthetic public reference name."
  type        = string
}

variable "subnet_ids" {
  description = "Reference private subnet IDs."
  type        = list(string)
}

variable "security_group_id" {
  description = "Reference cluster security group ID."
  type        = string
}
