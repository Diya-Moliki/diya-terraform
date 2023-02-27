terraform {
  backend "s3" {
    bucket = "mybucket-diya"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt = true
  }
}
