variable "REGION" {
  description = "The AWS region to create the S3 bucket in"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "The environment (e.g. dev, staging, prod)"
  type        = string
}
