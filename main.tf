/*provider "aws" {
    region = var.region
}*/

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 5.99.1"
        }
    }
}

resource "aws_instance" "server" {
    ami = var.ami
    instance_type = var.instance_type
}
