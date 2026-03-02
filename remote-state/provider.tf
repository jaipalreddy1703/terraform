terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"   
      version = "6.33.0"            #terraform aws provider version 
    }
  }

  backend "s3" {
    bucket = "jaipal-s3-bucket"
    key = "remote-state.tfstate"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
