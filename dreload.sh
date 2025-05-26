
sudo docker stop pg_master;
sudo docker rm pg_master;
# sudo docker rmi postgres:17;
# sudo rm -rf psqlData; # Not Required Because Actual Data Will Be Deleted
echo y | sudo docker system prune;
sudo docker compose up -d;
sudo docker exec -it pg_master psql -U postgres postgres;