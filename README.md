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

1. Login to docker hub
```
docker login -u username
```

1. Build image

```
docker build --tag username/gke-demo-app:0.1 .
```

2. Push image

```
docker push username/gke-demo-app:0.1
```
