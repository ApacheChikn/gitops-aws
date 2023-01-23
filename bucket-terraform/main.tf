terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.51.0"
    }
  }
}

provider "aws" {
  region = var.region
}
resource "aws_s3_bucket" "b" {
  bucket = var.bucket-name

  tags = {
    Name        = "${var.bucket-name}-ekstest"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}