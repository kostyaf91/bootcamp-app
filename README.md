# Node.js Weight Tracker
## This project created with Azure Kubernetes Service

### Install and Configuration

1. Install Kubectl and Docker on the agent machine.
2. Install Azure CLI.
3. Create AKS in Azure with your subscription (better to connect your ACR to the AKS).
4. At the end of the creation (or Kubernetes services > Your service > Overview > Connect) follow the commands. 
5. In Azure Devops create connection to the AKS.
6. Install NGINX Ingress Controller.

## CI
At the CI we creating and pushing the docker image to the ACR.

## CD
At the CD we:
1. Creating secrets using Azure DevOps library.
2. Creating dockerRegistry secret.
3. Deploying PostgreSQL Database and his service to the cluster.
4. Deploying The application with 3 instances, his service and ingress. 