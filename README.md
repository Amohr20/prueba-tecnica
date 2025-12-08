## README – Prueba Técnica – Ingeniero de Infraestructura
Descripción
Este README contiene la documentación del proyecto requerido en la Prueba Técnica para Ingeniero de Infraestructura. Incluye Next.js SSR, Docker, Terraform, AWS EC2/ECR, Nginx y CI/CD.


## Tecnologías Principales
• Next.js SSR con basePath /prueba-tecnica

• Docker multistage

• AWS EC2 y ECR

• Terraform (IaC)

• GitHub Actions (CI/CD)

• Nginx Reverse Proxy

• Trivy (Escaneo de vulnerabilidades)


## Estructura del Repositorio
/app – Código Next.js

Dockerfile – Contenedor multistage

next.config.ts – Configuración SSR

.github/workflows/deploy.yml – Pipeline CI/CD

/infra – Terraform + nginx.conf + trivy-report.txt


## URL Pública
HTTP: http://44.213.82.171/prueba-tecnica

HTTPS: https://44.213.82.171/prueba-tecnica (certificado self‑signed)


## Instrucciones Básicas
docker build -t prueba-tecnica .

docker run -p 3000:3007 prueba-tecnica

npm install && npm run build && npm start
