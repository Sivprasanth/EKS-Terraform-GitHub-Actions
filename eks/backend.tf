terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "siva-bucket-8096"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "mydynamodbtable"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
