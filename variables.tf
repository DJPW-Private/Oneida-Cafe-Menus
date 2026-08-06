variable "aws_region" {
  description = "AWS region in which to create the S3 bucket."
  type        = string
  default     = "us-east-2"
}

variable "bucket_name_prefix" {
  description = "Prefix used for the globally unique S3 bucket name."
  type        = string
  default     = "oneida-website-public"

  validation {
    condition = (
      length(var.bucket_name_prefix) >= 3 &&
      length(var.bucket_name_prefix) <= 50 &&
      can(regex("^[a-z0-9][a-z0-9-]*[a-z0-9]$", var.bucket_name_prefix))
    )

    error_message = "The bucket prefix must contain lowercase letters, numbers, or hyphens and cannot begin or end with a hyphen."
  }
}

variable "environment" {
  description = "Environment tag."
  type        = string
  default     = "development"
}

variable "force_destroy" {
  description = "Allow Terraform to delete the bucket even when it contains objects."
  type        = bool
  default     = false
}