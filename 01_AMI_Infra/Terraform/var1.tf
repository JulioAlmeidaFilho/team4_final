variable meu_nome {
  type        = string
  default     = "Julio"
  description = "Adicionar seu nome"
}

variable cidr_block {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR_Block"
}

variable key_pair_name {
  type        = string
  default     = "team4"
  description = "Chave de acesso"
}

variable public_id_rsa {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDm+n5e1pACkI1nVVQI1WrwJ7/Mhr7OyNP42WqAFTR6dZUt1QUQagfZDGZm1PgAKKUnk2v+Wxff9ZczNx1nefKMTNR86ktT0tmx/eV8A/T6kIpzL3y3CsM8pFStikt6NuqkGNGEQOnphOvDCY8OGzctp0tU4PMka5t9Ow4ZV5LDXV2m9WJ/99WW9xIlQVdPZV+HJ77zlVT9H4iGNBHEYVozc09RfYMwQtZ96CIf2GUCr7TY/6+WxaLgzth9fe2/oSLCSo+XwIzarCOoYc2YS6nW9Jj5k14BFPeVYBYb6+wdIr46HDYvYoBC+1TKe1a+Jb8TDT6JMn/C5CZs7u2SxfEdKF1iL+g354gDBAsz0nRKzfNjzenK43MObjFNPPwSutSFF4jbw7+dkSqgiNcN9ua9dJIskWqGjgyhSVFbkDrAmKAMgGSPp8Jzrhmxw3OtJjIJBwl2XKSG7kbU3zUhRW1hQGEQDENVZ3pmzitM2duTnZyQpHYq+mu4ffuUDyi6+EE="
  description = "Colocar a chave ID RSA Publica"
}