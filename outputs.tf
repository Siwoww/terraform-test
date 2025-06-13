output "ENV" {
  value = terraform.workspace
}

output "REGION" {
  value = local.region_env[terraform.workspace]
}

output "SERVER_NAME" {
  value = aws_instance.server.tags["Name"]
}

output "SERVER_IP" {
  value = aws_instance.server.public_ip
}

output "INSTANCE_TYPE" {
  value = aws_instance.server.instance_type
}