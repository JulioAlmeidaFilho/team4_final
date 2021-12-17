resource "local_file" "var4" {
  filename = "var4.tf"
  content = <<EOF
variable AMI_id {
  type        = string
  default     = "${aws_ami_from_instance.ami-team4.id}"
  description = "AMI_id"
}
EOF
}