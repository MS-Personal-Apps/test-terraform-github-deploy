variable "region" {
  type        = string
  default     = "eu-west-1"
  description = "Default AWS region."
}
variable "profile" {
  type        = string
  default     = "alamydev"
  description = "AWS CLI profile that Terraform should use when interacting with AWS resources."
}

variable "instance_ami" {
  type    = string
  default = "ami-0694d931cee176e7d" # Amazon Linux 2 AMI, change this based on your region and preferences
}
variable "instance_type" {
  default = "t2.micro"
  type    = string

}
variable "key_pair_name" {
  type    = string
  default = "test-terraform-github-deploy" # Change this to your existing key pair name
}
