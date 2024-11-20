# Usar la imagen base de PHP 8.3 con FPM
FROM php:8.3-fpm

# Instalar Nginx
RUN apt-get update && apt-get install -y nginx

# Limpiar el cache de apt
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Crear los directorios necesarios
RUN mkdir -p /run/nginx && mkdir -p /var/www/html

# Copiar un archivo de configuración para Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar la aplicación PHP (opcional, para pruebas)
COPY index.php /var/www/html/index.php

# Asignar permisos correctos al directorio de la aplicación
RUN chown -R www-data:www-data /var/www/html

# Exponer el puerto 80 para Nginx
EXPOSE 80

# Comando para iniciar Nginx y PHP-FPM
CMD ["sh", "-c", "php-fpm & nginx -g 'daemon off;'"]
