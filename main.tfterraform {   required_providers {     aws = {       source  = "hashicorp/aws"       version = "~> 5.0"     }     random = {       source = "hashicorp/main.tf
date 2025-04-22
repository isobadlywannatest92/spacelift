terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "example" {
  bucket        = "spacelift-noob-test-bucket-${random_id.suffix.hex}"
  force_destroy = true

  tags = {
    Name = "SpaceliftNoob"
  }
}
