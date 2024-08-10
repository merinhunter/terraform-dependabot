terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.62.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.5.0"
    }
  }

  required_version = "~> 1.9.0"
}
