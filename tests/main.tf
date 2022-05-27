terraform {
  backend "s3" {
    bucket         = "tf-state-somoto-eu-west-1-tests"
    key            = "tests/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "tf_tests_locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-west-1"
}
