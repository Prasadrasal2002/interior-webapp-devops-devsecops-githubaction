# 🏠 InteriorDesignPro

A modern and elegant web application for showcasing interior design projects. Built using **Flask**, **HTML/CSS**, and **Bootstrap**, this app allows users to explore featured projects, learn about services, and get in touch via a contact form.

---

## 📖 Overview

**InteriorDesignPro** is designed for interior designers and design studios to present their work in a clean and engaging format. It features:

- A stylish homepage with hero and CTA sections.
- About and Project pages to explain expertise.
- Contact page with form submission.
- Responsive UI with elegant styling and modern layout.

---

## 🚀 Features

- 🖼️ Hero section with dynamic image
- 📁 Project gallery with modern cards
- 🧾 About page with structured company story
- 📬 Contact form (with Flask back-end)
- 🧑‍💻 Clean and modular HTML templates
- 🎨 Custom CSS for each section
- 📱 Fully responsive design

---

## 🧰 Tech Stack

- **Frontend**: HTML5, CSS3, Bootstrap 5
- **Backend**: Python 3, Flask
- **Deployment**: Flask local server 

---

## 📁 Project Structure

```bash
interior-web-app/
├── app
│   ├── __init__.py
│   ├── routes.py
│   ├── templates
│   │   ├── base.html
│   │   ├── home.html
│   │   ├── about.html
│   │   ├── projects.html
│   │   └── contact.html
│   └── static
│       ├── css
│       │   └── styles.css
│       │   └── navbar.css
│       │   └── footer.css
│       │   └── home.css
│       │   └── contact.css
│       │   └── projects.css
│       │   └── about.css
├── requirements.txt
├── run.py
└── README.md
````

---

1. ## ⚙️ Setup Instructions

2. **Fork the repository** 
- Go to the original repo: [sparknet-innovations/interior-web-app](https://github.com/sparknet-innovations/interior-web-app)
- Click **Fork** in the top-right to create your own copy.
  


4. **Create a new branch**

```bash
git checkout -b feature/update-readme
```
   
![image](https://github.com/user-attachments/assets/f389b37d-f633-44c0-9e21-0bfc41f816d7)

   
   
   
6. **Clone Fork Repository**

```bash
git clone git@github.com:Prasadrasal2002/interior-web-app.git
cd interior-web-app
```
   
![image](https://github.com/user-attachments/assets/8e365c7e-6d5c-4929-980e-6cbf3984fc24)

   


8. **Configure SSH for GitHub**
   
```bash
ssh-keygen -t rsa -b 4096 -C "rasalprasad2002@gmail.com"
```
   
![image](https://github.com/user-attachments/assets/4cdbcb17-a3ed-4660-a8ea-b04379d0a114)

   
   

Copy the public key:
   
```bash
cat ~/.ssh/id_rsa.pub
```
Go to GitHub > Settings > SSH and GPG Keys > New SSH Key > Paste and save
   

10. **Create a virtual environment**

   
```bash
python -m venv venv
source venv/bin/activate  # On Windows use venv\Scripts\activate
```
   
   
11. **Install dependencies**

```bash
pip install -r requirements.txt
```
   
![image](https://github.com/user-attachments/assets/dec9dc72-81c0-486d-abca-652ef5f0e17b)

   

   

11. **Run the Flask app**

```bash
python run.py
```

![image](https://github.com/user-attachments/assets/cd87b30f-73cf-477c-bdb2-14ff7ed42ab0)



   

11. **Open your browser**
    
Visit `http://127.0.0.1:5000` to see the app in action.
   

![image](https://github.com/user-attachments/assets/04d02ad5-86dc-4fe2-b9e0-abf94d31ea44)

   



14. **Install required tools:**


a) **Python 3.x:**
    
**Download:** https://www.python.org/downloads/

**Verify:**

```bash
python --version
```
       

![image](https://github.com/user-attachments/assets/a6026d5e-5bf0-400d-855e-ec3e6b4df7cf)




b) **Flask:**
    
Installed using a virtual environment:

```bash
python -m venv venv
venv\Scripts\activate  # activate on Windows
pip install -r requirements.txt
```

c) **Docker:**
    
**Download:** https://www.docker.com/products/docker-desktop/
>> Windows 10/11 with WSL 2 enabled
>> Enable Docker after installation and sign in with DockerHub.

**Verify:**


```bash
docker --version
```
       
![image](https://github.com/user-attachments/assets/b302487b-2a26-4b34-abdf-72f65bb6994d)





d) **Git:**

**Download:** https://git-scm.com/

       
**Verify:**

```bash
git --version
```
       
![image](https://github.com/user-attachments/assets/7f31563a-169a-42e9-a9c3-72e081c36521)





e) **AWS CLI:**
    
**Download:** https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html
       
**Verify:**

```bash
aws --version
```
       
![image](https://github.com/user-attachments/assets/6a8c4d20-760b-4b30-9014-9a10252b7514)





e) **Terraform:**

```bash
choco install terraform -y
choco upgrade terraform -y
```

**Verify:**

```bash
terraform -v
```

![image](https://github.com/user-attachments/assets/7a9ccd85-147b-4793-9ef9-6994d0911ac0)





## Terraform Infrastructure Setup
      
13.  **Created a dedicated feature branch for infrastructure setup :**
       
```bash
git checkout -b feature/terraform-setup
```

**create Terraform files :**
       
```bash
terraform/
│   backend.tf              
│   main.tf                               
│   provider.tf             
│   terraform.tfvars    
│   variables.tf            

└───modules/
    ├───ec2/
    │   ├── ec2.tf           
    │   ├── outputs.tf       
    │   └── variables.tf     
    │
    ├───iam/
    │   ├── iam.tf           
    │   └── outputs.tf       
    │
    ├───sg/
    │   ├── security.tf      
    │   ├── outputs.tf       
    │   └── variables.tf     
    │
    └───vpc/
        ├── vpc.tf           
        ├── outputs.tf
        └── variables.tf    
```


i) **Initialize Terraform**


```bash
cd terraform
       
terraform init
```

![image](https://github.com/user-attachments/assets/9d4012ff-d432-456a-a911-6b98157bb7c2)




ii) **View the Execution Plan**

```bash
terraform plan
```

![image](https://github.com/user-attachments/assets/775e9dbd-273c-4f23-9f1a-f7a2fdcfc67b)




![image](https://github.com/user-attachments/assets/4036cccf-7613-421d-9335-ed126bac22e3)





iii) **Apply the Configuration**
        
```bash
terraform apply
```

![image](https://github.com/user-attachments/assets/fe870f9f-85fd-42ce-b446-660db2a0ca3d)





## Terraform Output

**VPC:**

![image](https://github.com/user-attachments/assets/84fb19e9-b18c-4140-94b5-30e831a42a91)






**Instances:**


![image](https://github.com/user-attachments/assets/df7300ef-cdf1-4c7c-9400-0d0b6a4ff40c)





**Subnets:**

![image](https://github.com/user-attachments/assets/7ab72e0a-4c3e-4cba-a3d3-3ba845c6732d)




**Internet-Gateway:**

![image](https://github.com/user-attachments/assets/48e07032-b92a-486c-943a-12f6de814cff)





**Route Table:**

![image](https://github.com/user-attachments/assets/fe731f3b-dfb0-4082-9480-84d4ce31ea78)





**Security Group:**

![image](https://github.com/user-attachments/assets/fac0919d-cb5c-446f-95b0-a5ff54624fd2)






iv) **Destroy Infra:**

```bash
terraform destroy
```

![image](https://github.com/user-attachments/assets/6ae62c5c-9caf-40af-a443-df2fac074ba4)



       

![image](https://github.com/user-attachments/assets/297e354b-d564-422e-843a-0d9e75378dd4)





## Dockerization of the Flask Application

14. **Created a dedicated feature branch for Dockerization of the Flask application.**
      
```bash
git checkout -b feature/docker-setup
```

15. **create .gitignore file**
    
(This tells Git what to ignore so these files aren't pushed to the repository:)

![image](https://github.com/user-attachments/assets/a1e5907f-170f-4fb4-b00b-c31c302bb02f)





17. **Create  .dockerignore file**
    
(This prevents unnecessary files from being copied into your Docker image)

![image](https://github.com/user-attachments/assets/3a119c8e-0696-4cb7-b5d5-a132276ba622)





19. **Create a Dockerfile and requirements.txt files**
(For Containerization)
      
```bash
vim Dockerfile
```

```bash
vim requirements.txt
```



### Docker Setup

20. Open Docker Desktop from the Start menu and wait until it's fully initialized**

21. **Build the Docker image:**
      
```bash
docker build -t interior-web-app:latest .
```
      

![image](https://github.com/user-attachments/assets/ce1ca7d3-3da7-4e92-86a1-eae056aa23d8)



    

22. **List Docker Images:**





```bash
docker images
```




![image](https://github.com/user-attachments/assets/4dc6f469-7e14-4b14-ab32-c00cbd99e6c3)





23. **Run the container:**




      
```bash
docker run -itd -p 5000:5000 interior-web-app:latest
```




![image](https://github.com/user-attachments/assets/96fff6d3-d182-400e-996b-ac3b03bfef27)





**Verify Running Containers:**





```bash
docker ps
```




![image](https://github.com/user-attachments/assets/3aff6893-d57c-4f59-9d11-3020c75617c5)



    


23. **Docker Login:**




![image](https://github.com/user-attachments/assets/4d4df858-8fb8-4bd2-926d-db706e609957)





24. **Push to DockerHub:**





```bash
docker tag interior-web-app:latest devopscode44/interior-web-app:v1
docker push devopscode44/flask-app:v1
```




![image](https://github.com/user-attachments/assets/d0f3ea3a-f53b-404c-9c22-05799713e395)





25. **DockerHub Dashboard:**





![image](https://github.com/user-attachments/assets/790610e7-6c85-48d8-953d-96508a3d62a5)



    

24. **Stop and Remove the Container**
      
```bash
docker stop Container-ID
      
docker rm Container-ID
```




![image](https://github.com/user-attachments/assets/8b51e210-1f8f-4815-ac93-b2e823457a3c)






## Kubernetes Deployment




25. **Created a dedicated feature branch for Deployment of the Flask application.**





```bash
git checkout -b feature/k8s-deployment
```




26. **Kubernetes Manifests (in /k8s folder)**




    
    deployment.yml: Defines the Flask app deployment

    service.yml: Exposes the app internally or externally

    configmap.yml: manage dynamic environment variables

    ingress.yml: Configures external access to the Flask app via HTTP/HTTPS using domain-based routing.
                 Enabling clean URLs and load balancing through an Ingress Controller.





    ![image](https://github.com/user-attachments/assets/2ccf58eb-0c0e-42b2-bcf0-688dd3f24059)

    



27. **Deploying to Kubernetes**




1) **Apply deployment:**





```bash
cd k8s
kubectl apply -f deployment.yml
```





2) **Apply service:**





```bash
kubectl apply -f /service.yaml
```




3) **Apply configmap**





```bash
kubectl apply -f configmap.yml
```





4) **Verify pods and service:**




```bash
kubectl get deployment
```




![image](https://github.com/user-attachments/assets/41268d85-a168-41da-be5a-c339d19d919c)





```bash
kubectl get svc
```




![image](https://github.com/user-attachments/assets/4fc928f0-cef7-471c-8a1e-9370b16f9551)





```bash
kubectl get configmap
```




![image](https://github.com/user-attachments/assets/5554be24-2b49-4197-a2dc-13be2084ef55)






5) **Accessing the Flask App**

```bash
minikube service flask-service
```




![image](https://github.com/user-attachments/assets/95616fa7-07b3-43c1-874e-23ba176bea45)






29. ## Terraform Infrastructure Setup for EKS




       
```bash
git checkout -b feature/terraform-setup

mkdir  terraform-eks
```




**create Terraform files :**

```bash
terraform-eks/
│
├── main.tf             
├── variables.tf        
├── outputs.tf           
├── versions.tf         
├── iam.tf              
├── iam-policy.json
```





![image](https://github.com/user-attachments/assets/b3dce3b6-c188-4351-b6f6-aeff68b6d2af)






i) **Initialize Terraform**





```bash
cd terraform-eks
       
terraform init
```




ii) **View the Execution Plan**

```bash
terraform plan
```




iii) **Apply the Configuration**
        
```bash
terraform apply
```




EKS Cluster:




![image](https://github.com/user-attachments/assets/c9b6c669-d44e-458d-8b39-9f2fbe570b1b)


       


30. ## AWS ALB Ingress on Kubernetes





1) **Download the IAM Policy JSON File**

```bash
curl -o iam-policy.json https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/main/docs/install/iam_policy.json
```






2)  **Create the IAM Policy using AWS CLI**

```bash
aws iam create-policy \
  --policy-name AWSLoadBalancerControllerIAMPolicy \
  --policy-document file://iam-policy.json

```





3) **Associate IAM OIDC Provider with EKS Cluster**

```bash
eksctl utils associate-iam-oidc-provider \
  --region ap-south-1 \
  --cluster interior-app-eks \
  --approve
```





4) **Create IAM Service Account and Attach Policy**





```bash
eksctl create iamserviceaccount \
  --cluster interior-app-eks \
  --namespace kube-system \
  --name aws-load-balancer-controller \
  --attach-policy-arn arn:aws:iam::<aws-acc-ID>:policy/AWSLoadBalancerControllerIAMPolicy \
  --approve \
  --override-existing-serviceaccounts
```





5) **Download & Install AWS Load Balancer Controller using Helm**




```bash
helm repo add eks https://aws.github.io/eks-charts
helm repo update
```

```bash
helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=interior-app-eks \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  --set region=ap-south-1 \
  --set vpcId=<your-vpc-id> \
  --set image.repository=602401143452.dkr.ecr.ap-south-1.amazonaws.com/amazon/aws-load-balancer-controller
```





6) **Verify Installation**





```bash
kubectl get deployment -n kube-system aws-load-balancer-controller

```




![image](https://github.com/user-attachments/assets/fc335f84-8b0f-41e0-82f5-a4d5156feaa4)





 ## Establishing CI/CD Workflows



 
31. **Setting up GitHub Secrets for CI/CD**

steps:
Go to Your Repository Settings > Secrets and variables > Actions > New repository secret




**Create self hosted runner:**




Repo-Settings > Actions > Runners > New self hosted runner > Select runner image > and run the commands





![image](https://github.com/user-attachments/assets/0619dcc0-117f-4761-9056-31110da5d2ba)






**Secrets:**
![image](https://github.com/user-attachments/assets/c27ff11f-7a63-42cf-95ae-084e0edebb5a)




 
32. **CI/CD Workflow using GitHub Actions**


```bash
name: CI/CD Pipeline

on:
  push:
    branches:
      - main
      - feature/docker-setup
      - feature/k8s-deployment

jobs:
  build-and-deploy:
    runs-on: [ self-hosted ]  # EC2 self-hosted runner

    steps:
      # 1. Checkout code
      - name: Checkout source code
        uses: actions/checkout@v3
        with:
          ref: feature/docker-setup

      # 2. Docker login
      - name: Docker Hub Login
        uses: docker/login-action@v2
        with:
          username: ${{ secrets.DOCKER_USERNAME }}
          password: ${{ secrets.DOCKER_PASSWORD }}

      # 3. Build Docker image
      - name: Build Docker Image
        run: docker build -t devopscode44/interior-web-app:latest .

      # 4. Push Docker image to Docker Hub
      - name: Push Docker Image
        run: docker push devopscode44/interior-web-app:latest

      # 5. Checkout Kubernetes deployment manifests
      - name: Checkout k8s manifests
        uses: actions/checkout@v3
        with:
          ref: feature/k8s-deployment  # or same branch if combined

      # 6. Configure AWS credentials for EKS
      - name: Configure AWS Credentials
        uses: aws-actions/configure-aws-credentials@v2
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: ap-south-1

      # 7. Update kubeconfig to connect to EKS cluster
      - name: Setup kubeconfig for EKS
        run: |
          aws eks update-kubeconfig --name interior-app-eks --region ap-south-1

      # 8. Apply Kubernetes manifests
      - name: Deploy to Kubernetes
        run: |
          kubectl apply -f ./k8s/
```




![image](https://github.com/user-attachments/assets/3f770adb-8540-4be6-84a3-d09c854e4d96)





![image](https://github.com/user-attachments/assets/f3429e6a-b8d1-4e00-9eef-63f7bf3a580a)




![image](https://github.com/user-attachments/assets/b9590b07-955d-4820-8135-cbdae63469c6)






**View Pods**
```bash
kubectl get pods
```



![image](https://github.com/user-attachments/assets/3cce3813-ed69-446e-bb1a-0c4f85110e45)





**View Services:**
This command lists all the services (LoadBalancer, ClusterIP, NodePort) in the current namespace.
```bash
kubectl get svc
```




![image](https://github.com/user-attachments/assets/3bc65da6-7b2d-4b5d-b4a1-1d909b0520b0)





**View Ingress**
This command displays ingress resources, which are used to expose services over HTTP(S).
```bash
kubectl get ingress
```




![image](https://github.com/user-attachments/assets/31dd6f5a-930d-4a4e-8bcc-9ab5bf6c14e4)





**Load balanncer:**




![image](https://github.com/user-attachments/assets/6dc11ce0-62dc-4ffd-a2c7-4b2bd713a449)






33. ## Monitoring EKS with Amazon CloudWatch





**Create IAM Policy for CloudWatch Agent:**





```bash
curl -O https://raw.githubusercontent.com/aws/containers-roadmap/main/preview-programs/cloudwatch-container-insights/cloudwatch-agent-iam-policy.json

aws iam create-policy \
  --policy-name CloudWatchAgentServerPolicy \
  --policy-document file://cloudwatch-agent-iam-policy.json
```




**Attach Policy to Node IAM Role**

**Get the node IAM role:**
```bash
aws eks describe-nodegroup \
  --cluster-name interior-app-eks \
  --nodegroup-name prasad-node-group \
  --query "nodegroup.nodeRole" \
  --output text
```




**Attach the policy to the role (example role name: eks-node-role):**




```bash
aws iam attach-role-policy \
  --role-name eks-node-role \
  --policy-arn arn:aws:iam::<your-account-id>:policy/CloudWatchAgentServerPolicy
```




34. ## Install CloudWatch Metrics Agent via Helm




```bash
helm repo add eks https://aws.github.io/eks-charts

helm upgrade --install cloudwatch-agent eks/aws-cloudwatch-metrics \
  --namespace amazon-cloudwatch \
  --create-namespace \
  --set clusterName=interior-app-eks \
  --set awsRegion=ap-south-1 \
  --set serviceAccount.create=true \
  --set serviceAccount.name=cloudwatch-agent
```




**Verify Installation**





```bash
kubectl get pods -n amazon-cloudwatch
```



![image](https://github.com/user-attachments/assets/ec05d81e-2fa2-4bc9-9544-591ab0013eab)





35. ## CloudWatch Outputs in AWS Console




**Performance:**




![image](https://github.com/user-attachments/assets/a74979e9-35f4-4510-b721-cdfa0b9cf6c5)




**Cluster Performance monitoring**




![image](https://github.com/user-attachments/assets/3b9b144a-d3eb-4796-9fcc-fa78b786733e)





**Log Groups**




![image](https://github.com/user-attachments/assets/fbad1f54-5732-4af0-8211-f8e7dbfa05fb)





36. ## Accessing the Application via ALB Ingress (AWS Load Balancer Controller)

This project uses AWS ALB Ingress Controller to expose the Kubernetes service externally via a secure and scalable Application Load Balancer.


![image](https://github.com/user-attachments/assets/ca7bda1f-f046-4856-97ee-feb502b6b53f)




**Accessing the Application**




![image](https://github.com/user-attachments/assets/5e4d8c07-967e-411a-8946-80470b18213d)





---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork this repository.
2. Create a new branch (`feature-branch`).
3. Make your changes and commit (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.
