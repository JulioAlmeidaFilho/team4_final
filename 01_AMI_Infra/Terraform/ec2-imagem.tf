data "aws_ami" "ami-ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}

resource "aws_instance" "ec2-imagem" {
  ami           = data.aws_ami.ami-ubuntu.id
  subnet_id = var.sub_pub_1a
  instance_type = "t2.large"
  key_name      = var.key_pair_name
  associate_public_ip_address = true
  tags = {
    Name = "ec2-imagem-${var.meu_nome}"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = true
    volume_size           = 8
  }
  vpc_security_group_ids = [aws_security_group.ec2-imagem.id]
}
