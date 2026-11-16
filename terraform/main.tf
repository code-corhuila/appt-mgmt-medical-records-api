terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "appt-mgmt-medical-records-api"
}

output "project_name" {
  value = var.project_name
}
