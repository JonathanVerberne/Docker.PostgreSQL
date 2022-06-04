# Docker.PostgreSQL
Creates a demo postgresql database in a docker container through a docker-compose file.

# Prerequisites
Note: You must have docker installed on your local machine. Follow steps here;\
  Get Docker - https://docs.docker.com/get-docker/

# Run & Connect
Note: Must have admin rights when running command prompt and you must be in the directory where the docker-compose.yml is located.

### Step 1 - Run docker compose file
  $ docker-compose up -d
  
### Step 2 - Connect to the newly created database using DBeaver
  
![image](https://user-images.githubusercontent.com/56781613/171974506-ecb6a7a0-67df-4529-a2df-a0ad9497156d.png)

### Step 3 - Optional (Clean up)
  When you have finished with the container, you can remove it by runnign the following command\
  $ docker-compose down

# Back Up / Restore Instructions
### Back Up
  Here is the command need to run to back up the PostgreSQL database.\
    $ docker exec -u <your_postgres_user> <postgres_container_name> pg_dump -Fc <database_name_here> > db.dump
  Example
    docker exec -u postgres motogp-postgres-container pg_dump -Fc motogp_db > /Docker/db_backups/motogp_db_backup.sql

### Restore Database
You will need to drop the existing database first, and then restore it.\
  $ docker exec lcs-db-container psql -U postgres -d postgres -c "DROP DATABASE loyalty_db WITH (FORCE);"
  
Restore database from back up.\
  $ docker exec -i -u postgres motogp-postgres-container pg_restore -C -d postgres < /Docker/db_backups/motogp_db_backup.sql
