resource "aws_security_group" "public_sg" {
  name   = "devops-public-sg"
  vpc_id = aws_vpc.devops_vpc.id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }
}

resource "aws_security_group" "private_sg" {
  name   = "devops-private-sg"
  vpc_id = aws_vpc.devops_vpc.id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }
}