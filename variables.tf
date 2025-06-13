locals {
  region_env = {
    default = "us-east-1"
    DEV = "eu-north-1"
    PROD = "eu-central-1"
  }
}

locals {
  instance_type_env = {
    default = "t3.nano"
    DEV = "t3.micro"
    PROD = "t3.small"
  }
}

data "aws_ami" "amazon_linux_latest" {
    most_recent = true
    owners = ["amazon"]
    filter {
      name = "name"
      values = ["al2023-ami-2023.7.*-kernel-*-x86_64"]
    }
}