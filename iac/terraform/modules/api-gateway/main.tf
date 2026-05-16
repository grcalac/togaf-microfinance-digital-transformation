resource "aws_apigatewayv2_api" "this" {
  name          = "${var.name}-api"
  protocol_type = "HTTP"

  tags = {
    Purpose = "academic-reference"
  }
}
