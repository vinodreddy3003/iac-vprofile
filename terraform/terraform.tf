terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.30.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.5"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.3"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10.0, < 2.11.0"
    }
  }

  backend "s3" {
    bucket = "vprofileproject2506"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.6.3, < 2.0.0"
}
