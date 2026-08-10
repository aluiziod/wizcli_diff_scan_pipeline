resource "aws_security_group" "wiz_repro_sg" {
  name        = "wiz-repro-open-ssh"
  description = "Intentionally insecure SG for Wiz diff-scan repro"

  ingress {
    description = "SSH open to the world"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "RDP open to the world"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}