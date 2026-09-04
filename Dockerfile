FROM php:8.2-cli

# Instalar dependencias del sistema y extensiones de PHP necesarias (PDO y ZIP para Composer)
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev \
    && docker-php-ext-install pdo pdo_mysql zip

# Instalar Composer globalmente (usando la imagen oficial como fuente)
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Configurar directorio de trabajo
WORKDIR /var/www/html
