# tf-state-somoto-eu-west-1-stage_bucket conf
# #########################################
resource "aws_s3_bucket" "tf-state-somoto-eu-west-1-stage_bucket" {
  bucket = "tf-state-somoto-eu-west-1-stage"  
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tf-state-somoto-eu-west-1-stage_enc" {
  bucket = aws_s3_bucket.tf-state-somoto-eu-west-1-stage_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "tf-state-somoto-eu-west-1-stage_bucket_versioning" {
  bucket = aws_s3_bucket.tf-state-somoto-eu-west-1-stage_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# tf-state-somoto-eu-west-1-tests_bucket conf
# #########################################
resource "aws_s3_bucket" "tf-state-somoto-eu-west-1-tests_bucket" {
  bucket = "tf-state-somoto-eu-west-1-tests"  
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tf-state-somoto-eu-west-1-tests_enc" {
  bucket = aws_s3_bucket.tf-state-somoto-eu-west-1-tests_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "tf-state-somoto-eu-west-1-tests_bucket_versioning" {
  bucket = aws_s3_bucket.tf-state-somoto-eu-west-1-tests_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
