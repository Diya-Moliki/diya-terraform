module "vpc" {
  source = "./modules/tf-state-resource/vpc"
}

module "tf-state" {
  source = "./modules/tf-state-resource"
}



