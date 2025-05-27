![https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLH40iVdIn4bCRGh2g98PiclKoxeaPwpi-vOPYXjxx2atkoI-TvAectcyOkOXEdNX6vMQTwQiOz792RxC2ileMNJrEpIfn82ZSpFqa2pVhxbr0DXQ-8cmHGhTLYb7fGLz3Lm94hjhZw3A9/s400/logo_3.png](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLH40iVdIn4bCRGh2g98PiclKoxeaPwpi-vOPYXjxx2atkoI-TvAectcyOkOXEdNX6vMQTwQiOz792RxC2ileMNJrEpIfn82ZSpFqa2pVhxbr0DXQ-8cmHGhTLYb7fGLz3Lm94hjhZw3A9/s400/logo_3.png)

# bWAPP v2.2 + Docker Compose

Este repositorio contiene una configuración completa de **bWAPP** (an extremely buggy web app) lista para levantar mediante **Docker Compose**, incluyendo:

- Soporte para **CAPTCHA funcional** (extensión PHP-GD instalada)
- **Persistencia** de la base de datos y del entorno bWAPP (no es necesario volver a ejecutar `/install.php`)
- Imagen personalizada basada en `raesene/bwapp`
- Dependiendo de tu instalación de Docker, el comando para interactuar con Docker Compose puede variar entre ```docker compose``` o con un guión en medio ```docker-compose```

---

## 🚀 Requisitos

- Docker
- Docker Compose

---

## 📦 Instalación y uso

1. **Clona el repositorio**

```bash
git clone https://github.com/aalesann/bwapp-docker.git
cd bwapp-docker
```

2. Levanta los servicios

```bash
docker compose up --build -d
```

3. Inicializar bWAPP

```bash
http://localhost/install.php
```

Hacé clic en ```here``` para crear la base de datos.

---

🧪 Probá el CAPTCHA

Visitá el desafío:
```bash
http://localhost/ba_captcha_bypass.php
```

---

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

---

🐳 Estructura del proyecto

```text
.
├── docker-compose.yml     # Orquestación con volúmenes
├── Dockerfile             # Imagen personalizada basada en raesene/bwapp
└── README.md              # Este archivo
```

🛡️ Advertencias
- Este entorno contiene vulnerabilidades intencionales.
- No lo uses en servidores públicos ni en producción. Solo para fines educativos.
- Este entorno utiliza la configuración de red de la máquina host, por lo tanto, verifica que no haya ningún servicio corriendo en el puerto 80.
- Si ocurre un conflicto de puertos, puede cambiar el puerto en el archivo ```docker-compose.yml```

---

👨💻 Autor
Ds: c3rb3r0

---

🏷️ Créditos

Este proyecto utiliza como base la imagen de Docker raesene/bwapp, creada por Rory McCune (raesene), disponible públicamente en Docker Hub.

