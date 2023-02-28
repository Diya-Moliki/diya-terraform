module "vpc" {
  source = "./modules/tf-state-resource/vpc"
}
module "ec2" {
  source = "./modules/tf-state-resource/ec2"
}




