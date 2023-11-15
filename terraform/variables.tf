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
# variable "s3_bucket" {
#   type        = string
#   description = "S3 bucket which stores the zipped lambda artifacts."
# }

# variable "s3_folder" {
#   type        = string
#   default     = ""
#   description = "S3 folder path of bucket which stores the zipped lambda artifacts."
# }
variable "repository_name" {
    type        = string

  default = "test-terraform-github-deploy-pr-1"
}

# Define variables
# variable "aws_access_key" {
#   type = string

#   default = "AKIA56XSBZIUNL33R6UW"
# }
# variable "aws_secret_key" {
#   type = string

#   default = "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"
# }
variable "instance_ami" {
  type    = string
  default = "ami-0694d931cee176e7d" # Amazon Linux 2 AMI, change this based on your region and preferences
}
variable "instance_type" {
  default = "t2.micro"
    type        = string

}
variable "key_pair_name" {
  type = string

  default = "test-terraform-github-deploy" # Change this to your existing key pair name
}
