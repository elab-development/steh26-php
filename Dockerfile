FROM php:8.2-apache

# Install mysqli (needed for MySQL connection)
RUN docker-php-ext-install mysqli

# Enable Apache mod_rewrite (optional but useful)
RUN a2enmod rewrite

# Copy project files
COPY . /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80