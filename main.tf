provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "dandasaibucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  force_destroy = true
  
   versioning {
    enabled = var.versioning
  }

  
  
  tags = var.tags
}