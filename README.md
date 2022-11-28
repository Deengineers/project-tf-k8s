# tf-k8s-project
A project that combines Terraform &amp; Kubernetes

- Install Terraform 1.1.15 on your machine and setup an EKS cluster on AWS with Terraform

**Step 1 (provider config)**

- Configure `terraform and provider` settings within `provider.tf` file with following specifications:Configure terraform to use `hashicorp/kubernetes` provider.
- 
    
    Specify the provider's local name: `kubernetes`
    
- 
    
    Provider version: `2.11.0`
    
- 
    
    Configure kubernetes provider with path to your `kubeconfig` file: `/root/.kube/config`
    

**Step 2 (create a frontend deployment with TF):**

- Create a terraform resource `ft-deploy` for kubernetes deployment with following specs:Deployment Name: `ft-deploy`
- 
    
    Deployment Labels = `name: ft-deploy`
    
- 
    
    Replicas: 5
    
- 
    
    Pod Labels = `name: web1`
    
- 
    
    Image: `kodekloud/webapp-color:v1`
    
- 
    
    Container name: `webapp-1`
    
- 
    
    Container port: `8080`
    

**Step 3 (create a webapp service resource on your cluster using Terraform):**

- Create a terraform resource `web-service` for kubernetes service with following specs:Service name: `web-service`
- 
    
    Service Type: `NodePort`
    
- 
    
    Port: `8080`NodePort: `30080`
    

**Step 4 (check all resources are running)** 

**Notes:** 

- Save this on your GitHub
- Make sure to setup billing alerts on your AWS account (we are not responsible for any charges) - so shutdown any instances or clusters
- Delete all AWS resources after use!
