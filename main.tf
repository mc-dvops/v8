terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

# Create a VPC
resource "aws_vpc" "vpc_val_mc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.vpc_val_mc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Pub 1"
  }

}


resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.vpc_val_mc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "PB2"
  }
}

