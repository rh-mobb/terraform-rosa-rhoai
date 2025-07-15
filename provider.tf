terraform {
  required_providers {
    rhcs = {
      version = ">= 1.6.9"
      source  = "terraform-redhat/rhcs"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.20.0"
    }

    validation = {
      source  = "tlkamp/validation"
      version = "1.1.1"
    }
  }
}

provider "rhcs" {
  client_id = var.client_id
  client_secret = var.client_secret
}

provider "aws" {
  region = var.region
}
