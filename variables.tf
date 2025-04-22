variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name"
  type        = string
  default     = "spacelift-noob"
}

variable "environment" {
  description = "Environment name (e.g. dev, test, prod)"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner tag for the bucket"
  type        = string
  default     = "your-name"
}
