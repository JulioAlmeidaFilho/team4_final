resource "aws_vpc" "vpc_4team" {
  cidr_block = var.cidr_block
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-4team-${var.meu_nome}"
  }
}