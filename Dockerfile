FROM php:8.2-apache

# Set working directory
WORKDIR /var/www/html

# Copy project files into container
COPY . .

# Install MySQL extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache rewrite module
RUN a2enmod rewrite

# Expose port
EXPOSE 80
