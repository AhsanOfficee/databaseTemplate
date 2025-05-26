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
1. Clone the Repository

git clone https://github.com/your-username/pg-docker-setup.git
cd pg-docker-setup

2. Configure Environment Variables

Create a .env file from the provided template:

cp .env.sample .env

# Edit .env to fit your environment

3. Start the Container

Run the startup script:

sudo sh dreload.sh
