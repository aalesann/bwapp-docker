from pathlib import Path

readme_content = """# bWAPP Dockerizado con CAPTCHA y Persistencia

Este repositorio contiene una configuración completa de **bWAPP** (an extremely buggy web app) lista para levantar mediante **Docker Compose**, incluyendo:

- Soporte para **CAPTCHA funcional** (extensión PHP-GD instalada)
- **Persistencia** de la base de datos y del entorno bWAPP (no es necesario volver a ejecutar `/install.php`)
- Imagen personalizada basada en `raesene/bwapp`

---

## 🚀 Requisitos

- Docker
- Docker Compose

---

## 📦 Instalación y uso

1. **Clonar el repositorio**

```bash
git clone https://github.com/aalesann/bwapp-docker.git
cd bwapp-docker

2. Levantar los servicios

```bash
docker compose up --build -d
```

3. Inicializar bWAPP (Ejecutar por única vez)

```bash
http://localhost:8080/install.php
```
Hacé clic en ```click here``` para crear la base de datos.

🧪 Probá el CAPTCHA

Visitá el desafío:
```bash
http://localhost:8080/ba_captcha_bypass.php
```

🧹 Comandos útiles

* Detener servicios:

```bash
docker compose down
```

* Detener servicios y borrar volúmenes:

```bash
docker compose down --volumes
```

* Ver logs:

```bash
docker compose logs -f
```

🐳 Estructura del proyecto

.
├── Dockerfile             # Imagen personalizada basada en raesene/bwapp
├── docker-compose.yml     # Orquestación con volúmenes
└── README.md              # Este archivo

🛡️ Advertencia
Este entorno contiene vulnerabilidades intencionales.
No lo uses en servidores públicos ni en producción. Solo para fines educativos.

👨💻 Autor
Ds: C3rb3r0

🏷️ Créditos
Este proyecto utiliza como base la imagen de Docker raesene/bwapp, creada por Rory McCune (raesene), disponible públicamente en Docker Hub.

