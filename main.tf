terraform {
  backend "s3" {
    region  = "us-east-1"
    bucket  = "sheldonkwok-terraform"
    key     = "main.tfstate"
    profile = "personal"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "personal"
  version = "2.6"
}
