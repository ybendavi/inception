Subject:
This project consists in having you set up a small infrastructure composed of different
services under specific rules. The whole project has to be done in a virtual machine. You
have to use docker compose.

Each Docker image must have the same name as its corresponding service.
Each service has to run in a dedicated container.

For performance matters, the containers must be built either from the penultimate stable
version of Alpine or Debian. The choice is yours.

You also have to write your own Dockerfiles, one per service. The Dockerfiles must
be called in your docker-compose.yml by your Makefile.

It means you have to build yourself the Docker images of your project. It is then forbidden to pull ready-made Docker images, as well as using services such as DockerHub
(Alpine/Debian being excluded from this rule).

You then have to set up:
• A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
• A Docker container that contains WordPress + php-fpm (it must be installed and
configured) only without nginx.
• A Docker container that contains MariaDB only without nginx.
• A volume that contains your WordPress database.
• A second volume that contains your WordPress website files.
• A docker-network that establishes the connection between your containers.
Your containers have to restart in case of a crash.



Skills:

System Management:
Setting up and configuring a virtual machine to carry out the project.
Creating folders and file structure to organize your project.
Managing volumes to store data.

Docker:
Creating Dockerfiles for each service you will run in a Docker container.
Using Docker Compose to orchestrate and manage containers.
Creating dedicated containers for each service.
Understanding best practices for writing Dockerfiles.
Creating a Docker network to connect containers.

Service Administration:
Configuring an NGINX container with TLSv1.2 or TLSv1.3.
Configuring a WordPress container with php-fpm.
Configuring a MariaDB container for the WordPress database.
Managing volumes to store the database and WordPress site files.

Security:
Configuring a domain name to access your infrastructure.
Using environment variables to store sensitive configurations.
Restricting access to containers via a specific port (port 443) and TLS protocols.
