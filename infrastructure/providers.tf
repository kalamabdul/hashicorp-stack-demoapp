terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.27"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }

    hcp = {
      source  = "hashicorp/hcp"
      version = "~> 0.92"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = var.tags
  }
}

provider "hcp" {
project_id = "b556e908-b4ea-4822-b6f8-af018b3c052f"
}
