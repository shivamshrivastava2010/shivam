provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIATCKAQK2HYRJKLSWS"
  secret_key = "TsIZg2iOp/IDGcfTIMyVOjqoHMbQuryFDkYnGUic"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-terraform-backend" # Specify your desired bucket name (must be globally unique)

  # Uncomment the following if you want to enable versioning
  # versioning {
  #   enabled = true
  # }

  # Uncomment the following if you want to enable server-side encryption
  # server_side_encryption_configuration {
  #   rule {
  #     apply_server_side_encryption_by_default {
  #       sse_algorithm = "AES256"
  #     }
  #   }
  # }

  # Uncomment the following if you want to configure logging
  # logging {
  #   target_bucket = "my-log-bucket" # Specify the bucket where logs will be stored
  #   target_prefix = "logs/"
  # }

  # Uncomment the following if you want to configure access control
  # acl    = "private" # You can set this to "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", or "bucket-owner-full-control"

  # Uncomment the following if you want to add tags to your bucket
  # tags = {
  #   Name = "MyBucket"
  #   Environment = "Production"
  # }
}

