# Configure the AWS Provider
provider "aws" {
  version = "~> 4.0"
  region  = "us-east-1"
}
terraform {
  backend "s3" {
    bucket         = "mybucket-diya" # Change this to a unique bucket name
    key            = "terraform.tfstate"
    region         = "us-east-1"               # Change this to your desired region
    dynamodb_table = "terraform-state-locking" # Change this to a unique DynamoDB table name
  }
}