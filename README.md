# 🧱 Rails + Docker + Sidekiq + Redis

This project was created with the purpose of **practicing and studying** concepts of containerization, background jobs, and service integration using **Ruby on Rails**, **Docker**, **PostgreSQL**, **Sidekiq**, and **Redis**.

---

## 🚀 Technologies Used

- **Ruby on Rails** – Main framework of the application  
- **PostgreSQL** – Relational database  
- **Sidekiq** – Asynchronous job processing  
- **Redis** – In-memory storage used by Sidekiq  
- **Docker** & **Docker Compose** – Containerization and service orchestration

---

## ⚙️ Project Structure

The project is fully containerized using **Docker Compose**, and includes the following services:

- `web`: Rails application  
- `db`: PostgreSQL database  
- `redis`: Redis server  
- `sidekiq`: Background job processor

Each service is configured in the `docker-compose.yml` file, and the build process is defined in the `Dockerfile`.

---

## 💡 Features

- **Simple home page**, without CSS, used only for testing and job execution.  
- **Demonstration job**, allowing you to visualize Sidekiq’s functionality through its web interface.  
  - `http://localhost:3000/home` runs the job  
  - `http://localhost:3000/sidekiq` shows the Sidekiq dashboard  
- Full integration between **Rails**, **Sidekiq**, and **Redis** inside a Docker environment.

---

## 🧩 How to Run the Project

### 1. Clone the repository
```bash
git clone https://github.com/Igormcosta/basic_docker.git
cd basic_docker
```
### 2. Run
```bash
sudo docker compose up