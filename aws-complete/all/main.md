1.  RDS (Relational Database Service)
RDS is a service that helps you run and manage relational databases in the cloud easily without worrying about infrastructure or maintenance.AWS handles database tasks like setup, backups, updates, and patching.

2. CloudFront
CloudFront is a Content Delivery Network (CDN) service from AWS. It delivers content (like images, videos, and files) to users faster by using a global network of servers.and CloudFront helps you deliver content quickly, securely, and globally by using servers close to your users.

3. ACM (AWS Certificate Manager)
ACM is a service that helps you create, manage, and deploy SSL/TLS certificates to secure your websites or applications. and ACM makes it easy to secure websites and applications with SSL/TLS certificates, managing everything like issuance, deployment, and renewal.

4. Route 53
What it is: A scalable domain name system (DNS) web service that routes end-user requests to the appropriate resources like EC2 or S3.
Why we use it: It manages domain names, routes internet traffic to your resources, and ensures high availability and low latency.

5. Amplify
AWS Amplify is a set of tools and services that help you build, deploy, and host full-stack web and mobile applications and helping you add features and deploy quickly without managing complex infrastructure.

6. Elastic Beanstalk
AWS Elastic Beanstalk is a platform-as-a-service (PaaS) that lets you deploy and manage applications without worrying about the infrastructure and it's helps you deploy, run, and scale applications without managing the servers. You focus on your code, and AWS handles the rest.

7. Developer Tools (Cloud9, CodeCommit, CodeBuild, CodeDeploy, CodePipeline)
What it is: A set of tools for developers to code, build, test, and deploy applications.
Cloud9: A cloud-based IDE for writing and running code.
CodeCommit: A source control service for managing code.
CodeBuild: A service for building and testing code.
CodeDeploy: A service for deploying code to various environments.
CodePipeline: A continuous integration and delivery service for automating code deployment.
Why we use it: These tools help automate software development, making it easier to build, test, and deploy code efficiently.

8. IAM (Identity and Access Management)
- IAM allows you to securely manage who can access AWS resources and what actions they can perform. It’s all about controlling who, what, and how users interact with AWS.
- IAM policies help you manage permissions for users, services, and roles. You can give full access, read-only access, or service-specific access based on the need.
- AmazonS3FullAccess, AmazonEC2FullAccess, AmazonRDSFullAccess, AWSLambdaExecute, PowerUserAccess


9. RedShift
- Redshift is a data warehouse for big data analytics. It’s fast, scalable, and ideal for analyzing large amounts of structured data to make decisions.

10. SQS (Simple Queue Service)
What it is: A managed message queue service that helps decouple and scale microservices, distributed systems, and serverless applications.
Why we use it: It stores and processes messages between different parts of a system, helping improve reliability and scalability.

11. SNS (Simple Notification Service)
What it is: A messaging service used for sending notifications to subscribers via email, SMS, or HTTP endpoints.
Why we use it: It enables communication between systems and alerts users about critical events or updates.

12. CloudFormation
- CloudFormation is like a blueprint for your AWS resources. You define what you need, and AWS builds it for you. It saves time, ensures consistency, and avoids manual setup errors.

13. Step Functions
-> Main point:
Step Functions automates workflows by organizing tasks in steps. It’s like a flowchart that connects AWS services and ensures everything runs in order.
-> Simple Example:
- Order Processing:
- Step 1 → Check inventory (Lambda).
- Step 2 → Charge the customer (Lambda).
- Step 3 → Ship the product (SNS notification).
- If any step fails, Step Functions can retry or handle the error.
Why we use it: It allows you to define workflows, automate tasks, and handle failures without writing complex code.

14. CloudWatch
What it is: A monitoring service that provides data and actionable insights into the performance of AWS resources and applications.
Why we use it: It helps monitor resources and logs, set alarms, and improve the operational health of applications and systems.

15. CloudTrail
What it is: A service that logs all AWS API calls made in your account for auditing and compliance.
Why we use it: It helps track changes, monitor activity, and ensure security by providing a detailed history of account activity.

16. Config
What it is: A service that enables you to assess, audit, and monitor configurations of AWS resources.
Why we use it: It helps ensure compliance, track configuration changes, and improve governance across AWS environments.

17. S3 (Simple Storage Service)
What it is: A scalable object storage service for storing and retrieving any amount of data.
Why we use it: It’s easy to use for storing data, backups, and static assets, and it scales automatically based on usage.

18. EBS (Elastic Block Store)
What it is: A block-level storage service for use with EC2 instances.
Why we use it: It provides persistent storage for EC2 instances, ideal for databases or file systems.

19. EFS (Elastic File System)
What it is: A fully managed file storage system for use with AWS Cloud services and on-premises resources.
Why we use it: It provides scalable and shared storage for applications that need a file system interface.

20. FSx
What it is: A service that provides fully managed Windows File System or Lustre (high-performance file system).
Why we use it: It helps run workloads that require high-performance computing or Windows-based file systems.

21. S3 Glacier
What it is: A low-cost cloud storage service for data archiving and long-term backup.
Why we use it: It’s ideal for storing infrequently accessed data, offering cheaper storage options with retrieval times ranging from minutes to hours.

# Summary:
- EBS: Block storage for a single EC2 instance → Linux.
- EFS: File storage for multiple EC2 instances → Linux.
- S3: Object storage for files and backups → Any platform (Linux, Windows, etc.).
- FSx: Specialized file systems for Windows or high-performance needs → Windows.
- S3 Glacier: Storage for archiving files (long-term, low-cost storage) → S3 data.

# Key Differences in Simple Words:
1. CloudWatch → Watches performance and sends alerts.
2. CloudTrail → Tracks who did what (user actions).
3. AWS Config → Tracks resource settings and checks if they follow rules.
=> Analogy to Understand:
1. Imagine you own a car:
2. CloudWatch: Monitors the car’s speed, fuel, and engine health (performance metrics).
3. CloudTrail: Logs who drove the car, where they went, and when (audit log of activities).
4. AWS Config: Checks if the car meets safety rules, like seat belts on, brakes working, etc. (compliance).

# Analogy:
SQS → Like a to-do list: Tasks are picked up one by one.
SNS → Like a loudspeaker: Announces a message to many listeners.
SNS broadcasts a message → "New order received".
SQS queues the message for processing → Worker processes the order asynchronously.


# Snapshot
-> A snapshot is a backup of a disk (EBS volume) at a specific point in time and used for backup, recovery, and migration. They are incremental to save storage space.
