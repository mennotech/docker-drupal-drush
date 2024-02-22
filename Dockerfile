FROM drupal:10.2.3-php8.3-apache-bookworm

WORKDIR /opt/drupal

# Install packages
RUN apt-get update && apt-get install --no-install-recommends -y \
    curl \
    wget \
    vim \
    git \
    unzip

# Clean repository and test
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Drush
RUN composer require drush/drush && composer update
