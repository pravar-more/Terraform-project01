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
#variable "vpc_name" {
 # type = string
#
#}

variable "sg_name"{
    type = string
}
variable "ami_map" { 
    description = "Map of region to AMI ID" 
    type = map(string) 
    default = { 
        "us-west-2" = "ami-0abcdef1234567890" 
        "us-east-1" = "ami-0123456789abcdef0" 
        # Add other regions and their corresponding AMI IDs 
    } 
}
variable "INSTANCE_NAME"{
    type = string
}
variable "KEY_NAME" {
    type = string 
}
variable "INSTANCE_TYPE" {
    type = string 
}  