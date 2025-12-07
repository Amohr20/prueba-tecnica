variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Región de AWS"
}

variable "ecr_repo_name" {
  type        = string
  default     = "prueba-tecnica"
  description = "Nombre del repositorio ECR"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Tipo de instancia EC2"
}

variable "key_name" {
  type        = string
  description = "Nombre del key pair de EC2"
}

variable "ssh_cidr" {
  type        = string
  default     = "0.0.0.0/0"
  description = "Rango permitido para SSH"
}