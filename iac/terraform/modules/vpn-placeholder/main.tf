resource "aws_ssm_parameter" "vpn_placeholder" {
  name  = "/reference/${var.name}/vpn-placeholder"
  type  = "String"
  value = "conceptual-private-connectivity-only"

  tags = {
    Purpose = "academic-reference"
  }
}
