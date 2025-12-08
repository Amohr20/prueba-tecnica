# Prueba Técnica – Ingeniero de Infraestructura

Este repositorio contiene la solución completa de la Prueba Técnica para el puesto de **Ingeniero de Infraestructura**, implementada utilizando tecnologías modernas de despliegue, automatización y seguridad.  
Incluye: **Next.js SSR, Docker, Terraform, AWS EC2/ECR, Nginx, GitHub Actions (CI/CD) y Trivy**.

---

## Tecnologías Principales

- **Next.js SSR** con basePath `/prueba-tecnica`
- **Docker multistage**
- **AWS EC2** (Ubuntu Server)
- **AWS ECR** (Docker Registry)
- **Terraform (IaC)**
- **GitHub Actions** (CI/CD automatizado)
- **Nginx** como Reverse Proxy (puertos 80/443)
- **Trivy** para escaneo de vulnerabilidades

---

## Estructura del Repositorio

- **/app:** Código fuente Next.js SSR
- **Dockerfile:** Imagen Docker multistage
- **next.config.ts:** Configuración SSR con basePath
- **.github/workflows/deploy.yml**
- **Pipeline CI/CD (Build + Push + Deploy)**
- **infra/**
    - main.tf
    - Terraform: EC2, ECR, IAM, SG, outputs
    - variables.tf
    - outputs.tf
    - terraform.tfvars
    - nginx.conf: Configuración reverse proxy
    - trivy-report.txt: Evidencia de escaneo de vulnerabilidades

---

## URL Pública

- **HTTP:** http://44.213.82.171/prueba-tecnica  
- **HTTPS:** https://44.213.82.171/prueba-tecnica  
  *(certificado self-signed solo para fines de esta prueba)*

---

## Ejecución Local

### Docker

docker build -t prueba-tecnica .
docker run -p 3000:3007 prueba-tecnica

### Node.js 

npm install
npm run build
npm start

## Estado del Proyecto

La aplicación está desplegada en AWS mediante:

Terraform (provisionamiento)

GitHub Actions (CI/CD automatizado)

Docker + ECR

EC2 con Nginx reverse proxy

TLS self-signed + headers de seguridad

Cumpliendo con todos los requerimientos de la prueba técnica.

## Autor

Prueba realizada por Angel Mohr

Ingeniero de Infraestructura
