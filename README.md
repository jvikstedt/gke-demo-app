# gke-demo-app

## Install dependencies

1. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
2. [Gcloud](https://cloud.google.com/sdk/docs/install)
3. [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

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

[GKE with terraform](https://developer.hashicorp.com/terraform/tutorials/kubernetes/gke)


### Using terraform

```
cd terraform

terraform apply
```
