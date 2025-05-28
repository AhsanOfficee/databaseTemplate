#!/bin/bash

# Load variables from .env
source .env
export $(grep -v '^#' .env | xargs)

# Use the variables
# echo "sudo docker stop $CONTAINER_NAME"
sudo docker stop $CONTAINER_NAME;
sudo docker rm $CONTAINER_NAME;
sudo docker rmi $IMAGE_NAME:$VERSION;
# sudo rm -rf psqlData; # Not Required Because Actual Data Will Be Deleted
echo y | sudo docker system prune;

# Replace __SERVICE_NAME__ manually using sed, then envsubst for the rest
sed "s/__SERVICE_NAME__/${SERVICE_NAME}/g" docker-compose.yml | envsubst > docker-compose.template.yml

sudo docker compose -f ./docker-compose.template.yml up -d; # start the container
echo "sudo docker exec -it $CONTAINER_NAME psql -U $PG_USER $PG_DB_NAME";
sudo rm -rf  docker-compose.template.yml;