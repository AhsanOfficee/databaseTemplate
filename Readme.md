📦 PostgreSQL Docker Setup

This repository provides a secure and configurable Docker Compose setup for running a PostgreSQL database container using environment variables from a .env file.
⚙️ Features

    ✅ Uses PostgreSQL with environment-based configuration

    🛡️ Loads all secrets (user, password, DB name) from .env

    🐳 Docker Compose with custom network and volume

    🔁 Auto-restart enabled for container reliability

    🚀 Easy startup with a custom script


📁 Directory Structure

.
├── docker-compose.yml    # Main Docker Compose configuration file
├── .gitignore            # Git ignore file to exclude sensitive or unnecessary files
├── .env.sample           # Sample environment configuration (safe to commit)
├── dreload.sh            # Shell script to start and reload Docker containers
└── README.md             # Project documentation



🚀 Getting Started

Follow these steps to quickly set up the PostgreSQL Docker environment:
1. 📥 Clone the Repository

git clone https://github.com/AhsanOfficee/databaseTemplate.git
cd databaseTemplate

2. ⚙️ Configure Environment Variables

Create a .env file from the provided sample:

cp .env.sample .env

    📝 Edit the .env file to match your environment settings.

3. 🐳 Start the Docker Container

Run the startup script to build and launch the container:

sudo sh dreload.sh

4. 🧱 Access the PostgreSQL Container

Once the container is running, you can access the PostgreSQL shell:

sudo docker exec -it pg_master psql -U postgres postgres

    This connects you to the default postgres database using the postgres user inside the pg_master container.