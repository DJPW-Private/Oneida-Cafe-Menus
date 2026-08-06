output "bucket_name" {
  description = "Name of the S3 website bucket."
  value       = aws_s3_bucket.website.id
}

output "website_url" {
  description = "S3 static website URL."
  value       = "http://${aws_s3_bucket_website_configuration.website.website_endpoint}"
}

output "website_endpoint" {
  description = "S3 website endpoint without the protocol."
  value       = aws_s3_bucket_website_configuration.website.website_endpoint
}

output "website_domain" {
  description = "S3 website domain."
  value       = aws_s3_bucket_website_configuration.website.website_domain
}