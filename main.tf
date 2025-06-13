resource "aws_instance" "server" {
    ami = data.aws_ami.amazon_linux_latest.image_id
    instance_type = local.instance_type_env[terraform.workspace]

    tags = {
      Name = "server-${terraform.workspace}"
    }
}