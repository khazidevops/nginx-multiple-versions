

Nginx Multiple Versions


Dockerfile: Defines how to build the Docker image.
nginx.conf: The Nginx configuration file.
version1: Directory containing configuration files for Nginx version 1.
version2: Directory containing configuration files for Nginx version 2.


Getting Started

Prerequisites
Docker
Docker Compose (if used)
SSH access to a server (e.g., EC2 instance)


docker build -t my-nginx-versions .


docker run -d -p 8080:80 my-nginx-versions


GitHub Actions
The project includes a GitHub Actions workflow for automated deployment. The workflow deploys the latest changes to an EC2 instance.

Configuration:

SSH_PRIVATE_KEY: Add your SSH private key to GitHub Secrets.
EC2_USER: Username for SSH access to your EC2 instance.
EC2_HOST: Public IP address or hostname of your EC2 instance.

GitHub Actions Workflow File
The workflow file is located in .github/workflows/deploy.yml. It performs the following steps:

Checks out the code.
Sets up the SSH key.
Deploys the application by:
Navigating to the application directory.
Cloning or updating the repository.
Building the Docker image.
Running the Docker container.


Troubleshooting

Permission Denied Errors: Ensure that the user running Docker commands has appropriate permissions or use sudo with Docker commands.
Nginx Configuration Issues: Verify the Nginx configuration files and ensure they are correctly copied into the Docker image.


http://65.2.31.205:8080/version1/

Access Different Versions
You can access the different versions by navigating to:

http://localhost:8080/version1 for Version 1
http://localhost:8080/version2 for Version 2
http://localhost:8080/version3 for Version 3



