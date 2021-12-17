cp /home/ubuntu/Projeto_4Team/00_Rede_Isolada/var1.tf /home/ubuntu/Projeto_4Team/01_AMI_Infra/Terraform
cp /home/ubuntu/Projeto_4Team/00_Rede_Isolada/var2.tf /home/ubuntu/Projeto_4Team/01_AMI_Infra/Terraform
cd Terraform
terraform init
terraform apply -auto-approve
cp /home/ubuntu/Projeto_4Team/01_AMI_Infra/Terraform/hosts /home/ubuntu/Projeto_4Team/01_AMI_Infra/Ansible
cd ..
cd Ansible
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts config_imagem.yml -u ubuntu --private-key /home/ubuntu/team4
cp /home/ubuntu/Projeto_4Team/01_AMI_Infra/Terraform/var1.tf /home/ubuntu/Projeto_4Team/01_AMI_Infra/Terraform-AMI/
cp /home/ubuntu/Projeto_4Team/01_AMI_Infra/Terraform/var2.tf /home/ubuntu/Projeto_4Team/01_AMI_Infra/Terraform-AMI/
cp /home/ubuntu/Projeto_4Team/01_AMI_Infra/Terraform/var3.tf /home/ubuntu/Projeto_4Team/01_AMI_Infra/Terraform-AMI/
cd ..
cd Terraform-AMI
terraform init
terraform apply -auto-approve
