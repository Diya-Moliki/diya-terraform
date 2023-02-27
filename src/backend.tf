terraform {
  backend "s3" {
    bucket         = "mybucket-diya" # Change this to a unique bucket name
    key            = "terraform.tfstate"
    region         = "us-east-1" # Change this to your desired region
    dynamodb_table = "terraform-state-locking" # Change this to a unique DynamoDB table name
  }
}

# resource "aws_s3_bucket" "my_bucket" {
#   bucket = "mybucket-diya" # Change this to a unique bucket name
# }

# resource "aws_dynamodb_table" "my_table" {
#   name           = "terraform-state-locking" # Change this to a unique table name
#   billing_mode   = "PAY_PER_REQUEST"
#   hash_key       = "LockID"
#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }
