resource "aws_security_group" "cluster" {
  name        = "${var.name}-cluster-sg"
  description = "Reference security group for academic architecture review."
  vpc_id      = var.vpc_id

  egress {
    description = "Outbound traffic for reference workloads."
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.name}-cluster-sg"
  }
}
