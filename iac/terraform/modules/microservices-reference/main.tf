resource "aws_cloudwatch_log_group" "service" {
  for_each = var.services

  name              = "/aws/reference/${var.name}/conceptual-services/${each.key}"
  retention_in_days = 30

  tags = {
    Purpose = "academic-reference"
    Domain  = each.value.domain
    ICA     = tostring(each.value.ica)
  }
}
