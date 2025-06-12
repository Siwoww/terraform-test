provider "aws" {
    region = "eu-north-1"
}

resource "aws_instance" "server" {
    ami = "ami-006b4a3ad5f56fbd6"
    instance_type = "t3.nano"
}
