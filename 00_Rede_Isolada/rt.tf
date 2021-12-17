resource "aws_route_table" "rt_4team_pub" {
  vpc_id = aws_vpc.vpc_4team.id

  route = [
      {
        carrier_gateway_id         = ""
        cidr_block                 = "0.0.0.0/0"
        destination_prefix_list_id = ""
        egress_only_gateway_id     = ""
        gateway_id                 = aws_internet_gateway.gw.id
        instance_id                = ""
        ipv6_cidr_block            = ""
        local_gateway_id           = ""
        nat_gateway_id             = ""
        network_interface_id       = ""
        transit_gateway_id         = ""
        vpc_endpoint_id            = ""
        vpc_peering_connection_id  = ""
      }
  ]

  tags = {
    Name = "route_table_4team_pub"
  }
}

resource "aws_route_table_association" "a1" {
  subnet_id      = aws_subnet.subnet_pub_1a.id
  route_table_id = aws_route_table.rt_4team_pub.id
}

resource "aws_route_table_association" "b1" {
  subnet_id      = aws_subnet.subnet_pub_1b.id
  route_table_id = aws_route_table.rt_4team_pub.id
}

resource "aws_route_table" "rt_4team_priv_1a" {
  vpc_id = aws_vpc.vpc_4team.id

  route = [
      {
        carrier_gateway_id         = ""
        cidr_block                 = "0.0.0.0/0"
        destination_prefix_list_id = ""
        egress_only_gateway_id     = ""
        gateway_id                 = ""
        instance_id                = ""
        ipv6_cidr_block            = ""
        local_gateway_id           = ""
        nat_gateway_id             = aws_nat_gateway.team4_ng_sub_1a.id
        network_interface_id       = ""
        transit_gateway_id         = ""
        vpc_endpoint_id            = ""
        vpc_peering_connection_id  = ""
      }
  ]

  tags = {
    Name = "route_table_4team_priv1a"
  }
}

resource "aws_route_table_association" "priv_1a" {
  subnet_id      = aws_subnet.subnet_priv_1a.id
  route_table_id = aws_route_table.rt_4team_priv_1a.id
}

resource "aws_route_table" "rt_4team_priv_1b" {
  vpc_id = aws_vpc.vpc_4team.id

  route = [
      {
        carrier_gateway_id         = ""
        cidr_block                 = "0.0.0.0/0"
        destination_prefix_list_id = ""
        egress_only_gateway_id     = ""
        gateway_id                 = ""
        instance_id                = ""
        ipv6_cidr_block            = ""
        local_gateway_id           = ""
        nat_gateway_id             = aws_nat_gateway.team4_ng_sub_1b.id
        network_interface_id       = ""
        transit_gateway_id         = ""
        vpc_endpoint_id            = ""
        vpc_peering_connection_id  = ""
      }
  ]

  tags = {
    Name = "route_table_4team_priv1b"
  }
}

resource "aws_route_table_association" "priv_1b" {
  subnet_id      = aws_subnet.subnet_priv_1b.id
  route_table_id = aws_route_table.rt_4team_priv_1b.id
}
