resource "aws_instance" "k8s_proxy" {
  ami           = var.AMI_id
  subnet_id = var.sub_pub_1a
  instance_type = "t2.medium"
  key_name      = var.key_pair_name
  associate_public_ip_address = true
  tags = {
    Name = "k8s-haproxy-${var.meu_nome}"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = true
    volume_size           = 8
  }
  vpc_security_group_ids = [aws_security_group.acessos_haproxy.id]
}

resource "aws_instance" "k8s_masters" {
  ami           = var.AMI_id
  associate_public_ip_address = true
  subnet_id = var.sub_pub_1a
  instance_type = "t2.large"
  key_name      = var.key_pair_name
  count         = 3
  tags = {
    Name = "k8s-master-${count.index}-${var.meu_nome}"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = true
    volume_size           = 32
  }
  vpc_security_group_ids = [aws_security_group.acessos_masters.id]
  depends_on = [
    aws_instance.k8s_workers,
  ]
}

resource "aws_instance" "k8s_workers" {
  ami           = var.AMI_id
  instance_type = "t2.medium"
  key_name      = var.key_pair_name
  associate_public_ip_address = true
  subnet_id = var.sub_pub_1a
  count         = 3
  root_block_device {
    delete_on_termination = true
    encrypted             = true
    volume_size           = 32
  }
  tags = {
    Name = "k8s_workers-${count.index}-${var.meu_nome}"
  }
  vpc_security_group_ids = [aws_security_group.acessos_workers.id]
}