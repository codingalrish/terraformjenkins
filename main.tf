terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 5.0"
   }
 }
}

provider "aws" {
 region = "us-east-1"
}

resource "aws_s3_bucket" "demo_bucket" {
 bucket = "my-training-bucket-12345"
}

output "bucket_name" {
 value = aws_s3_bucket.demo_bucket.bucket
}

