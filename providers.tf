provider "aws" {
    region = local.region_env[terraform.workspace]
}