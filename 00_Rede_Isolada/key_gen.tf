resource "aws_key_pair" "chave_key" {
  key_name   = var.key_pair_name
  public_key = var.public_id_rsa
}
