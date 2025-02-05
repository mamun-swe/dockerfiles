FROM php:8.2-cli

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev \
    && docker-php-ext-install zip pdo_mysql \
    && rm -rf /var/lib/apt/lists/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /var/www

# Add a non-root user
RUN useradd -m laravel && chown -R laravel:laravel /var/www
USER laravel

# Copy only Composer files first to leverage Docker caching
COPY --chown=laravel:laravel composer.json composer.lock ./

# Install dependencies (Allow platform differences)
RUN composer install --no-interaction --prefer-dist --no-scripts --ignore-platform-reqs

# Copy remaining project files
COPY --chown=laravel:laravel . .

# Expose port 8000
EXPOSE 8000

# Run Laravel development server
CMD php artisan serve --host=0.0.0.0 --port=8000
