output "server_ip" {
  value       = aws_instance.ec2.public_ip
  description = "ip address of server"
}
