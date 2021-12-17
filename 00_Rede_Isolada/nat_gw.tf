resource "aws_eip" "nat_gateway1a" {
  vpc = true
}

resource "aws_eip" "nat_gateway1b" {
  vpc = true
}

resource "aws_nat_gateway" "team4_ng_sub_1a" {
  allocation_id = aws_eip.nat_gateway1a.id
  subnet_id     = aws_subnet.subnet_pub_1a.id
  tags = {
    Name = "team4_ng_sub_1a"
  }
}

resource "aws_nat_gateway" "team4_ng_sub_1b" {
  allocation_id = aws_eip.nat_gateway1b.id
  subnet_id     = aws_subnet.subnet_pub_1b.id
  tags = {
    Name = "team4_ng_sub_1b"
  }
}
