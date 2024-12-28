provider "aws" {
	region = "us-east-1"
}

resource "aws_s3_bucket" "output_bucket" {
	bucket = "terraform-output123456789"
}

output "bucket_name" {
	value = aws_s3_bucket.output_bucket.id
}

output "Bucket_arn" {
	value = aws_s3_bucket.output_bucket.arn
}

output "bucket_info" {
	value = "bucketname: ${aws_s3_bucket.output_bucket.id}, bucketarn: ${aws_s3_bucket.output_bucket.arn}"
}

output "all" {
	value = aws_s3_bucket.output_bucket
}
