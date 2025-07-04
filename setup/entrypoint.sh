#!/bin/sh

# Verifica se o Laravel já foi criado
if [ ! -f artisan ]; then
  echo "-> Instalando novo projeto Laravel..."
  composer create-project --prefer-dist laravel/laravel .
else
  echo "-> Projeto Laravel já existente."
fi

# Instala dependências (caso não estejam)
echo "-> Instalando dependências do Composer..."
composer install

# Gera a chave da aplicação
echo "-> Gerando chave da aplicação Laravel..."
php artisan key:generate

echo "✅ Setup concluído. Agora execute: docker-compose up -d"