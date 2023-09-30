# gke-demo-app

## Install dependencies

1. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
2. [Gcloud](https://cloud.google.com/sdk/docs/install)
3. [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
4. [Helm](https://helm.sh/docs/intro/install/)

## Prerequisite

1. Enable following API:s in Google cloud (could be done with terraform as well
   in theory)
    1. Compute Engine API
    2. Kubernetes Engine API

2. Install gke-gcloud-auth-plugin
    ```
     gcloud components install gke-gcloud-auth-plugin
    ```

### Kubernetes cluster and VPC with terraform



### Terraform

To manage infrastructure in Google cloud

```
cd terraform

terraform apply

// cleanup
// terraform destroy
```

Guide to setup GKE with terraform
[GKE with terraform](https://developer.hashicorp.com/terraform/tutorials/kubernetes/gke)

### Docker

Building the app and pushing to image repository

#### Backend

1. Login to docker hub
```
docker login -u username
```

2. Build image

```
docker build --tag username/gke-demo-backend:0.1 .
```

3. Push image

```
docker push username/gke-demo-backend:0.1
```

#### Frontend

1. Login to docker hub
```
docker login -u username
```

2. Build image

```
docker build -f Dockerfile.frontend --tag username/gke-demo-frontend:0.1 .
```

3. Push image

```
docker push username/gke-demo-frontend:0.1
```

### Helm

Deploying application with helm

```
cd helm

helm install gke-demo-app .

// cleanup
// helm uninstall gke-demo-app
```

### Accessing services

You can access services using port-forwarding

```
kubectl --namespace default port-forward backend-75466f9d85-kjxr5 3000:3000

curl localhost:3000
```
