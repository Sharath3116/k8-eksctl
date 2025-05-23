terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
    backend "s3" {
      bucket         = "olavu-practice-remote-state"
      key            = "eksctl"
      region         = "us-east-1"
      dynamodb_table = "practice-locking"
    }
}

provider "aws" {
  region = "us-east-1"
}

