# Sistema de Tarefas (CRUD) em Laravel

Este projeto é um exemplo completo de aplicação Laravel usando Docker, MongoDB, Redis e RabbitMQ.

## Visão Geral

- **Back-end:** PHP 8 + Laravel
- **Banco de Dados:** MongoDB
- **Cache:** Redis
- **Mensageria:** RabbitMQ
- **Ambiente:** Docker Compose

---

## Como funciona o fluxo com Docker?

1. **Você define o ambiente no `docker-compose.yml`**
2. **Sobe todos os serviços com um comando**
3. **O código-fonte é montado dentro do container**
4. **Você desenvolve normalmente, mas tudo roda dentro dos containers**
5. **Na produção, basta rodar o mesmo comando e tudo funciona igual**

### Diagrama do ambiente

```mermaid
flowchart LR
    A[Seu Código] --montado--> B(Container App)
    B --comunica--> C(Container MongoDB)
    B --comunica--> D(Container Redis)
    B --comunica--> E(Container RabbitMQ)
    subgraph Docker Host (sua máquina ou servidor)
        B
        C
        D
        E
    end
```

---

## Passos para rodar o projeto

### 1. Suba o ambiente Docker

```bash
docker-compose up -d
```

### 2. Crie o projeto Laravel (se ainda não existir)

```bash
docker run --rm -v $(pwd):/app -w /app laravelsail/php80-composer:latest composer create-project --prefer-dist laravel/laravel src
```

### 3. Acesse o container do app

```bash
docker-compose exec app bash
```

### 4. Gere a chave do Laravel

```bash
cd src
php artisan key:generate
```

### 5. Instale o pacote de integração com MongoDB

```bash
composer require jenssegers/mongodb
```

### 6. Configure o `.env` e `config/database.php` para usar MongoDB, Redis e RabbitMQ

---

## Dicas

- Edite o código normalmente no seu editor, ele será refletido no container.
- Para instalar pacotes, rode os comandos dentro do container app.
- Para acessar o MongoDB, Redis ou RabbitMQ, use as portas mapeadas no `docker-compose.yml`.

---

## Versionamento

- Repositório Git: [https://github.com/LucasHenriqueDiniz/php-laravel-crud.git](https://github.com/LucasHenriqueDiniz/php-laravel-crud.git)

---

## Dúvidas?

Abra uma issue ou consulte este README sempre que precisar relembrar o fluxo!
