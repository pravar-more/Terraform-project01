variable "REGION" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "AWS_ACCESS_KEY" {
  type      = string
  sensitive = true
}

variable "AWS_SECRET_KEY" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}

variable "availability_zones" {



}
variable "vpc_name" {
  type = string

}
