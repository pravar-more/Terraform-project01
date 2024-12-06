provider "aws" {
  region = var.REGION
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = "*",
        Action = "s3:GetObject",
        Resource = "${aws_s3_bucket.bucket.arn}/*"
      }
    ]
  })
}


resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "versioning" { 
    bucket = aws_s3_bucket.bucket.id 
    versioning_configuration { 
        status = "Enabled" 
    }
}

resource "aws_s3_bucket_website_configuration" "website" { 
    bucket = aws_s3_bucket.bucket.bucket 
    index_document { 
        suffix = "index.html" 
    } 
    error_document { 
        key = "error.html" 
    } 
}