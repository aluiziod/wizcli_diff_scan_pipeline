resource "aws_s3_bucket" "test" {
  bucket = "wiz-repro-test-bucket-CHANGE-ME"
}

resource "aws_security_group" "test" {
  name = "wiz-repro-sg"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}