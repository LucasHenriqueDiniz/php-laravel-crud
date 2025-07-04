# Sistema de Tarefas (CRUD) em Laravel

Este projeto é um exemplo completo de aplicação Laravel usando Docker, MongoDB, Redis e RabbitMQ.

## Visão Geral

- **Back-end:** PHP 8 + Laravel
- **Banco de Dados:** MongoDB
- **Cache:** Redis
- **Mensageria:** RabbitMQ
- **Ambiente:** Docker Compose

---

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

### 1. Rode o setup

```bash
docker-compose run setup
```

### 2. Suba o app

```bash
docker-compose up -d
```
