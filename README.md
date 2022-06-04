# Docker.PostgreSQL
Creates a demo postgresql database in a docker container through a docker-compose file.

#Prerequisites
Note: You must have docker installed on your local machine. Follow steps here;
  Get Docker - https://docs.docker.com/get-docker/

# Run & Connect
Note: Must have admin rights when running command prompt and you must be in the directory where the docker-compose.yml is located.

Step 1 - Run docker compose file
  $ docker-compose up -d
  
Step 2 - Connect to the database using DBeaver
  
![image](https://user-images.githubusercontent.com/56781613/171974506-ecb6a7a0-67df-4529-a2df-a0ad9497156d.png)

## Step 3 - Optional
  When you have finished with the container, you can remove it by runnign the following command
  $ docker-compose down
