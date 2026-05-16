resource "aws_cloudwatch_log_group" "application" {
  name              = "/aws/reference/${var.name}/application"
  retention_in_days = 30

  tags = {
    Purpose = "academic-reference"
  }
}

resource "aws_cloudwatch_metric_alarm" "example_availability" {
  alarm_name          = "${var.name}-availability-reference"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 1
  metric_name         = "HealthyHostCount"
  namespace           = "AWS/ApplicationELB"
  period              = 60
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "notBreaching"
}
