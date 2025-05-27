# 📦 PostgreSQL Docker Setup

This repository provides a secure, flexible Docker Compose setup to run a PostgreSQL database container using configuration values sourced from a `.env` file.

---

## ⚙️ Features

* ✅ **PostgreSQL with Configurable Environment**
  Easily modify database credentials and settings using a `.env` file.

* 🛡️ **Secrets Management**
  Securely loads user, password, and database name from the environment file.

* 🐳 **Custom Docker Networking and Volumes**
  Supports isolated networks and persistent storage.

* 🔁 **Automatic Container Restart**
  Ensures high availability with Docker's restart policy.

* 🚀 **Simple Startup Script**
  One-step container build and deployment using a shell script.

---

## 📁 Directory Structure

```
.
├── docker-compose.yml     # Docker Compose configuration
├── .gitignore             # Ignores unnecessary/sensitive files
├── .env.sample            # Sample environment variables
├── dreload.sh             # Startup/reload script for containers
└── README.md              # Project documentation
```

---

## 🚀 Getting Started

Follow these steps to quickly spin up the PostgreSQL container environment:

### 1. 📥 Clone the Repository

```bash
git clone https://github.com/AhsanOfficee/databaseTemplate.git
cd databaseTemplate
```

---

### 2. ⚙️ Configure Environment Variables

Copy the sample `.env` file:

```bash
cp .env.sample .env
```

> ⚠️ **IMPORTANT:** Do **NOT** include spaces around the `=` sign in `.env`, or `dreload.sh` will fail.
>
> ✅ Correct:
>
> ```env
> PG_USER=myuser
> PG_PASSWORD=secret123
> ```
>
> ❌ Incorrect:
>
> ```env
> PG_USER = myuser  # Will break the script
> ```

Update the values to suit your environment.

---

### 3. 🐳 Start the PostgreSQL Container

Ensure you have the following versions:

* **Docker**: `27.3.1`
* **Docker Compose**: `v2.29.7`

Make the script executable:

```bash
chmod +x dreload.sh
```

Start the container:

```bash
./dreload.sh
```

---

### ⚠️ Troubleshooting

#### 1. Docker Compose Errors

* Ensure compatibility between Docker Compose version and the syntax used.
* If issues persist, adjust commands in `dreload.sh` for your setup.

#### 2. Subnet Conflicts

* Modify the `SUBNET` value in `.env` if Docker reports a network address conflict.

---

Then reinstall:

```bash
npm install
./dreload.sh
```

### 4. 🧱 Accessing the PostgreSQL Container

Once the container is running, connect to the database shell:

```bash
sudo docker exec -it pg_master psql -U postgres auth
```

This command opens a psql session into the `auth` database as the `postgres` user within the `pg_master` container.

---
