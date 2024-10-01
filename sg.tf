resource "aws_security_group" "sg" {
  name        = "SG-${var.projectName}"
  description = "fiap-group-23"
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    description = "HTTP Restaurant Port"
    from_port   = 30001
    to_port     = 30001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All"
    from_port   = 30001
    to_port     = 30001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}