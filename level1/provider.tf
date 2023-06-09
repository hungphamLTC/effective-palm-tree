terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-7k17jz"
    key    = "level1.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.vpc_region
}
