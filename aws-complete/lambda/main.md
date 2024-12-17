# aws lambda
1. Aws lambda is a service provided by aws. That lets you run you code different languages without worrying about servers. You don’t need to setup or manage any computer, aws takes care of everything. You only pay for the time your code runs (no cost when it’s not running).

# Why Do We Use AWS Lambda?
We use AWS Lambda because:
- No servers to manage – AWS handles everything for you.
- Saves money – You only pay when your code runs.
- Automatic scaling – It can handle one user or millions without extra setup.
- Easy to connect – Works with other AWS services like S3 and DynamoDB.
- Quick to set up – Great for small tasks and event-driven apps.
# How does AWS Lambda interact with the outside world?
- AWS Lambda interacts with the outside world in several ways: through AWS services like S3 and DynamoDB, by handling web requests via API Gateway, by calling external APIs, by connecting to databases, and by processing messages from services like SQS or SNS.
# What are the benefits of using AWS Lambda?
- No server management
- Pay only for execution time
- Automatic scaling
- Event-driven processing
- Seamless integration with AWS services

# What is the maximum execution time for an AWS Lambda function?
The maximum execution time is 15 minutes per invocation.

# What triggers can be used to invoke a Lambda function?
AWS services like S3, DynamoDB, Kinesis, CloudWatch, API Gateway, SQS, SNS, and more.
External events via HTTP APIs or SDKs.

# What are the limits of AWS Lambda (memory, timeout, etc.)?
Memory: 128 MB to 10 GB
Timeout: 15 minutes
Payload size: 6 MB (synchronous) and 256 KB (asynchronous)

# Can Lambda functions be used in a VPC? How do you configure that?
Yes, you can configure Lambda to run in a VPC. Assign the Lambda function to a VPC with private subnets and security groups. Ensure the function has internet access (via NAT Gateway) if needed.

# How do you secure AWS Lambda functions?
Use IAM roles to limit permissions.
Encrypt environment variables.
Validate and sanitize inputs to prevent injection attacks.
Use VPC to control network access.
