resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_4team.id

  tags = {
    Name = "aws_internet_gateway_terraform"
  }
}