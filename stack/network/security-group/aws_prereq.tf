terraform {
  backend "s3" {
    bucket = "localmacuser"
    key    = "tfstate/network/vpc.tfstate"
    region = "eu-west-1"
  }
}

provider "aws" {
  version = "~> 1.0"
  region = "eu-west-1"
}