resource "local_file" "hosts" {
  filename = "hosts"
  content = <<EOF
[ec2-tf]
${aws_instance.ec2-imagem.public_dns}
EOF
}

resource "local_file" "var3" {
  filename = "var3.tf"
  content = <<EOF
variable ec2_imagem_id {
  type        = string
  default     = "${aws_instance.ec2-imagem.id}"
  description = "ec2_imagem_id"
}
EOF
}