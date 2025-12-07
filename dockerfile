# Stage 1: Build
FROM node:20-alpine AS builder

WORKDIR /app

# Dependencias
COPY package*.json ./
RUN npm install

# Código fuente
COPY . .

# Build de la app Next.js
RUN npm run build

# Stage 2: Runtime
FROM node:20-alpine AS runner

WORKDIR /app

# copy del resultado del build
COPY --from=builder /app ./

# Usuario NO root (seguridad)
RUN addgroup -S nextjs && adduser -S nextjs -G nextjs
USER nextjs

# El contenedor expone 3000 (externo)
EXPOSE 3000

# La app escucha en 3007 (por script start)
ENV PORT=3007

# Valor por defecto del mensaje (se sobrescribe en producción)
ENV APP_RUNTIME_MESSAGE="Mensaje por defecto desde imagen Docker"

CMD ["npm", "run", "start"]