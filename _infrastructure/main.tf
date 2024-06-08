terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
  
  backend "s3" {
	bucket = "aws-prep-tf-backend"
	key    = "backend"
	region = "us-east-1"
  }
}

provider "aws" {
  region  = "us-east-1"
}
