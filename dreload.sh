
sudo docker stop pg_master;
sudo docker rm pg_master;
# sudo docker rmi postgres:17;
# sudo rm -rf psqlData;
echo y | sudo docker system prune;
sudo docker compose up -d;
sudo docker exec -it pg_master psql -U postgres postgres;

# # Create New User, Password And Grant All Privileges
# CREATE USER postgres WITH SUPERUSER PASSWORD 'password';
# drop database root;
# ALTER DATABASE postgres OWNER TO postgres; # ALTER DATABASE name OWNER TO new_owner;
# ALTER DATABASE template0 OWNER TO postgres; # ALTER DATABASE name OWNER TO new_owner;
# ALTER DATABASE template1 OWNER TO postgres; # ALTER DATABASE name OWNER TO new_owner;
# GRANT ALL PRIVILEGES ON DATABASE postgres to postgres; # GRANT ALL PRIVILEGES ON DATABASE db_name to user_name;
# GRANT ALL PRIVILEGES ON DATABASE template0 to postgres; # GRANT ALL PRIVILEGES ON DATABASE db_name to user_name;
# GRANT ALL PRIVILEGES ON DATABASE template1 to postgres; # GRANT ALL PRIVILEGES ON DATABASE db_name to user_name;