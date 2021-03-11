# backend configs #

terraform {
  backend "s3" {
    bucket         = "pd-test-tfstate"
    key            = "tf-provision-rds-testing/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "pd-test-tfstate"
    encrypt        = true
  }
}
