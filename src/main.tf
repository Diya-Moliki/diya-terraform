# Configure the AWS Provider
provider "aws" {
  version = "~> 4.0"
  region  = "us-east-1"
}

module "vpc" {
  source = "./modules/tf-state-resource/vpc"
}

module "tf-state" {
  source = "./modules/tf-state-resource"
}



