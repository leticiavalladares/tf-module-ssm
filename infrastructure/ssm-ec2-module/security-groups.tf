resource "aws_security_group" "server" {
  name        = "${var.instance_name}-sg"
  description = "Allow traffic to SSM endpoint"
  # For module use the var
  vpc_id      = var.vpc_id

  egress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.instance_name}-sg"
  }
}