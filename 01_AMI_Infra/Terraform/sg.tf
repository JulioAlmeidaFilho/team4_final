resource "aws_security_group" "ec2-imagem" {
  name        = "gs-ec2-imagem-${var.meu_nome}"
  description = "acessos inbound traffic"
  vpc_id = var.vpc_id
 
 ingress = [
    {
      description      = "SSH from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = null,
      security_groups : null,
      self : null
    },
    {
      description      = "SSH from VPC"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = null,
      security_groups : null,
      self : null
    },
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = [],
      prefix_list_ids = null,
      security_groups: null,
      self: null,
      description: "Libera dados da rede interna"
    }
  ]

  tags = {
    Name = "acessos_masters-${var.meu_nome}"
  }
}

# resource "aws_security_group_rule" "liberar_22" {
#   type             = "ingress"
#   description      = "Libera acessos"
#   from_port        = 22
#   to_port          = 22
#   protocol         = "tcp"
#   cidr_blocks      = ["0.0.0.0/0"]
#   security_group_id = aws_security_group.ec2-imagem.id
# }