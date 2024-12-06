#provider

AWS_ACCESS_KEY = "AKIAXBZV5UJMFH435TZ7"
AWS_SECRET_KEY = "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"
REGION         = "us-east-1"
availability_zones = "us-east-1"
#vpc_name = "CustomVPC-created"
sg_name = "Custom_sg"
AMI_MAP = { 
        "us-west-2" = "ami-0abcdef1234567890" 
        "us-east-1" = "ami-0123456789abcdef0" 
        # Add other regions and their corresponding AMI IDs 
    } 
INSTANCE_NAME = "CustomEC2_terraform"
INSTANCE_TYPE = "t2.micro"
KEY_NAME = "NVirginia-Key"