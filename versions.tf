terraform {
    required_versions= ">= 1.6"

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}