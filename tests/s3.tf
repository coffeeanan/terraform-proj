# tests-bucket-somoto
# #########################################
resource "aws_s3_bucket" "tests-bucket-somoto" {
  bucket = "tests-bucket-somoto"  
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tf-state-somoto-eu-west-1-tests_enc" {
  bucket = aws_s3_bucket.tests-bucket-somoto.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "tests-bucket-somoto_versioning" {
  bucket = aws_s3_bucket.tests-bucket-somoto.id
  versioning_configuration {
    status = "Enabled"
  }
}