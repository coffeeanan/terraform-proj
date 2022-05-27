resource "aws_dynamodb_table" "tf_tests_locks" {
  name         = "tf_tests_locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"  
  attribute {
    name = "LockID"
    type = "S"
  }
}