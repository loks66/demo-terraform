terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "workspace_demo" {
  bucket = "dock-${terraform.workspace}-bucket00005201200"
  tags = {
    Environment = terraform.workspace
    Owner       = "Dock"
  }
}
