resource "aws_subnet" "subnet_pub_1a" {
  vpc_id            = aws_vpc.vpc_4team.id
  cidr_block        = "${substr(var.cidr_block, 0, 4)}.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-4team-${var.meu_nome}-pub-subnet-1a"
  }
}

resource "aws_subnet" "subnet_pub_1b" {
  vpc_id            = aws_vpc.vpc_4team.id
  cidr_block        = "${substr(var.cidr_block, 0, 4)}.10.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "tf-4team-${var.meu_nome}-pub-subnet-1b"
  }
}

resource "aws_subnet" "subnet_priv_1a" {
  vpc_id            = aws_vpc.vpc_4team.id
  cidr_block        = "${substr(var.cidr_block, 0, 4)}.20.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-4team-${var.meu_nome}-priv-subnet-1a"
  }
}

resource "aws_subnet" "subnet_priv_1b" {
  vpc_id            = aws_vpc.vpc_4team.id
  cidr_block        = "${substr(var.cidr_block, 0, 4)}.30.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "tf-4team-${var.meu_nome}-priv-subnet-1b"
  }
}