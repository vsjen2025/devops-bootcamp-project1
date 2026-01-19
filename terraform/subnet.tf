resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.devops_vpc.id
  cidr_block = var.public_subnet_cidr
  tags = { Name = "devops-public-subnet" }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.devops_vpc.id
  cidr_block = var.private_subnet_cidr
  tags = { Name = "devops-private-subnet" }
}