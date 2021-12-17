output "subnets" {
  value = [
  "Felicidade! Rede criada!"
  ]
}

resource "local_file" "var2" {
  filename = "var2.tf"
  content = <<EOF
variable sub_pub_1a {
  type        = string
  default     = "${aws_subnet.subnet_pub_1a.id}"
  description = "subnet_pub_1a"
}
variable sub_pub_1b {
  type        = string
  default     = "${aws_subnet.subnet_pub_1b.id}"
  description = "subnet_pub_1b"
}
variable sub_priv_1a {
  type        = string
  default     = "${aws_subnet.subnet_priv_1a.id}"
  description = "subnet_priv_1a"
}
variable sub_priv_1b {
  type        = string
  default     = "${aws_subnet.subnet_priv_1b.id}"
  description = "subnet_priv_1a"
}
variable vpc_id {
  type        = string
  default     = "${aws_vpc.vpc_4team.id}"
  description = "vpc_id"
}        
EOF
}
