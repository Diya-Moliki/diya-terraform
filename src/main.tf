# Configure the AWS Provider
provider "aws" {
  version = "~> 4.0"
  region  = "us-east-1"
}

module "tf-state" {
  source = "./modules/tf-state-resource"
}
  backend "s3" {
    bucket         = "mybucket-diya"
    key            = "tf-infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
}


