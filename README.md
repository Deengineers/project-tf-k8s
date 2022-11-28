# tf-k8s-project
A project that combines Terraform &amp; Kubernetes

- Install Terraform 1.1.15 on your machine and setup an EKS cluster on AWS with Terraform

## How do I get started?

- Fork this repo and clone it to your local machine. Then get started. Any questions, tag our @DevOps-Experts on Discord. 


**Pre-req tasks:**

- Create an EKS cluster on your AWS account - use a t3.micro or medium machine. Figure out the rest of the configuration. You may search "how to deploy a simple EKS cluster with Terraform" and do what you have to do.
- Connect to your cluster locally and use `kubectl get nodes` and `kubectl get pods -A` to see that cluster is working after its deployed.
- You also need your kubeconfig saved and also know where its stored. 

**Step 1 (provider config)**


- Configure `terraform and provider` settings within `provider.tf` file with following specifications:
- Configure terraform to use `hashicorp/kubernetes` provider.
    
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
    
    Image: `nginx`
    
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

**Optional (Advaned):**

- Setup a CI/CD workflow with GitHub Actions that runs your Terraform plan & apply.

**Advanced 2.0:**

- If you want to go further and get the A+++, setup ArgoCD to run your K8s resources (you will need manifest files)

## I have finished this project, what is next?

- Submit your repo to one of the admins or @DevOps-Experts in our Discord and we will review it for you. Add this to your CV once completed
- We will release a part 2 of this project series soon inshaAllah!

**Notes:** 

- Save this on your GitHub
- Make sure to setup billing alerts on your AWS account (we are not responsible for any charges) - so shutdown any instances or clusters
- Delete all AWS resources after use!
- All details required are given to you.
- You have Google, so please use it!
