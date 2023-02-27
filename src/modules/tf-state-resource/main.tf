
# S3 Bucket for TF State File
resource "aws_s3_bucket" "terraform_state" {
  bucket        = "mybucket-diya"
}

# Dynamo DB Table for Locking TF Config
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-state-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}