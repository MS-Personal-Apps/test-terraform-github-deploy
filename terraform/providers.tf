terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.24.0"
    }
  }
  backend "s3" {
    encrypt = true
  }
}


provider "aws" {
  profile = var.profile
  region  = var.region
  default_tags {
    tags = {
      Service = "Video"
      # Squad_name      = "Philotimo"
      # Repository_name = "video-adapter"
      Created_by  = "terraform"
      Environment = title(terraform.workspace)
    }
  }
}
