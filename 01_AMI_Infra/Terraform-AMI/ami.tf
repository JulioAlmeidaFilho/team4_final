provider "aws" {
  region = "us-east-1"
}

resource "aws_ami_from_instance" "ami-team4" {
  name               = "terraform-projetofinal-${var.meu_nome}"
  source_instance_id = var.ec2_imagem_id
}

output "ami" {
  value = [
    "AMI: ${aws_ami_from_instance.ami-team4.id}"
  ]
}