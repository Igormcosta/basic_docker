# 🧱 Rails + Docker + Sidekiq + Redis

Este projeto foi criado com o objetivo de **praticar e estudar** conceitos de containerização, background jobs e integração entre serviços utilizando **Ruby on Rails**, **Docker**, **PostgreSQL**, **Sidekiq** e **Redis**.

---

## 🚀 Tecnologias utilizadas

- **Ruby on Rails** – Framework principal da aplicação  
- **PostgreSQL** – Banco de dados relacional  
- **Sidekiq** – Processamento assíncrono de jobs  
- **Redis** – Armazenamento em memória utilizado pelo Sidekiq  
- **Docker** & **Docker Compose** – Containerização e orquestração dos serviços

---

## ⚙️ Estrutura do projeto

O projeto está totalmente containerizado com **Docker Compose**, contendo os seguintes serviços:

- `web`: aplicação Rails  
- `db`: banco de dados PostgreSQL  
- `redis`: servidor Redis  
- `sidekiq`: execução dos jobs

Cada serviço é configurado no arquivo `docker-compose.yml`, e o build da aplicação é definido no `Dockerfile`.

---

## 💡 Funcionalidades

- **Home page simples**, sem CSS, apenas para execução e visualização de testes.  
- **Job criado para demonstração**, permitindo visualizar o funcionamento do Sidekiq na interface administrativa.  
- Integração completa entre **Rails**, **Sidekiq** e **Redis** dentro do ambiente Docker.

---

## 🧩 Como executar o projeto

### 1. Clonar o repositório
```bash
git clone https://github.com/Igormcosta/basic_docker.git
cd nome-do-projeto
