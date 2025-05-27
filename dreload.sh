#!/bin/bash

# Load variables from .env
source .env

# Use the variables
# echo "sudo docker stop $CONTAINER_NAME"
sudo docker stop $CONTAINER_NAME;
sudo docker rm $CONTAINER_NAME;
# sudo docker rmi $IMAGE_NAME:$VERSION; # Don't Delete Otherwise Conflict may Arise
# sudo rm -rf psqlData; # Not Required Because Actual Data Will Be Deleted
echo y | sudo docker system prune;
sudo docker compose up -d;
echo "sudo docker exec -it $CONTAINER_NAME psql -U $PG_USER $PG_DB_NAME";