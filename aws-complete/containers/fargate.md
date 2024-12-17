# aws fargate:
- Fargate is a serverless compute engine provided by AWS for running containers without needing to manage the underlying EC2 instances or infrastructure. It works with Amazon ECS (Elastic Container Service) and Amazon EKS (Elastic Kubernetes Service).

# Managing costs with AWS Fargate involves:
- Optimizing resource allocation for containers (right-sizing).
- Scaling based on demand to ensure you’re not overpaying for unused capacity.
- Using AWS tools like Cost Explorer and Budgets to track usage and manage costs effectively.

# Why Use Fargate?
1. Simplified Operations: You don’t have to worry about the underlying EC2 instances, making it easier to deploy and manage containerized applications.
2. Faster Deployment: Since Fargate manages the infrastructure, you can focus on your code and application deployment.
3. Security: Fargate provides a secure environment by isolating containers in their own compute environment.

# differnece between ec2 and fargate:
Fargate is a serverless compute service where AWS manages the infrastructure, and you pay only for the resources used, while EC2 gives you full control over virtual servers, and you pay for the entire instance regardless of usage.

1. vCPU and memory in fargate working.

               