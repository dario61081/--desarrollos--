# PHP Docker Image

Esta es una imagen de Docker que utiliza PHP 8.3 con FPM y Nginx, diseñada para aplicaciones web en entornos de prueba que requieren soporte para PDO, JSON y la biblioteca GD para la generación de PDFs utilizando FPDF.

## Descripción
Esta imagen está optimizada para el desarrollo de aplicaciones PHP y se puede utilizar únicamente en entornos de desarrollo. Incluye las extensiones necesarias para trabajar con bases de datos y generar documentos PDF.

## Construcción de la Imagen
Para construir la imagen, navega al directorio donde se encuentra el `Dockerfile` y ejecuta el siguiente comando:

```bash
docker build -t nombre_de_tu_imagen .
```

Reemplaza `nombre_de_tu_imagen` con el nombre que desees para tu imagen.

## Uso
Para ejecutar la imagen, puedes usar el siguiente comando:

```bash
docker run -d -p 80:80 nombre_de_tu_imagen
```

Esto ejecutará la imagen en segundo plano y mapeará el puerto 80 del contenedor al puerto 80 de tu máquina local.

## Dependencias
- PHP 8.3
- Nginx
- Extensiones de PHP:
  - PDO
  - JSON
  - GD (con soporte para Freetype y JPEG)

## Contribuciones
Las contribuciones son bienvenidas. Si deseas contribuir, por favor abre un issue o un pull request en el repositorio.

## Licencia
Este proyecto está bajo la Licencia MIT. Para más detalles, consulta el archivo LICENSE.
