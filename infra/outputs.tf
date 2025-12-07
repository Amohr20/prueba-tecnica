output "ecr_repository_url" {
  value       = aws_ecr_repository.prueba.repository_url
  description = "URL del repositorio ECR"
}

output "ec2_public_ip" {
  value       = aws_instance.prueba_ec2.public_ip
  description = "IP pública de la instancia EC2"
}