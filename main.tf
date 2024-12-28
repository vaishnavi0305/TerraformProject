provider "aws" {
	region = "us-east-1"
}

locals {
	first_part = "vaishnavi"
	second_part = "${local.first_part}-howareyou"
	bucket_name = "${local.second_part}-beautiful"
}

resource "aws_s3_bucket" "bucket" {
	bucket = local.bucket_name 
}
