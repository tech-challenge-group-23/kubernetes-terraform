resource "aws_security_group" "sg" {
  name        = "SG-${var.projectName}"
  description = "fiap-group-23"
  vpc_id      = data.aws_vpc.vpc.id

 ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}