# what is api gateway
-> API Gateway is a service that acts as a "front door" for APIs, allowing clients to access backend services. It handles tasks like routing requests, managing traffic, load balancing, authentication, and rate limiting.

# Why We Use API Gateway:
Manage Traffic: It handles incoming requests and forwards them to the right service.
Security: It can secure your APIs by managing authentication and authorization.
Scaling: It helps in scaling by distributing the traffic to the right resources automatically.
Simplify Services: It reduces the need to manage multiple APIs separately and provides a single entry point for all requests.

# types of APIs used in API Gateway:
REST API: It uses simple HTTP methods like GET, POST, and DELETE.
WebSocket API: Used for real-time communication, like chat apps or live updates.
HTTP API: Simpler version of REST API, good for basic tasks and cheaper.
GraphQL API: Lets you ask for specific data, useful when you need flexible queries.
SOAP API: Older type, used in big company systems with strict rules, works with XML.

# What is the main difference between REST API and HTTP API in API Gateway?
Answer: REST APIs are more feature-rich, supporting custom request/response models and advanced configurations, while HTTP APIs are simpler, faster, and more cost-effective for basic HTTP requests.

# Can you explain the concept of "Stages" in API Gateway?
Answer: Stages in API Gateway represent different environments (e.g., development, staging, production) where your API is deployed. Each stage can have its own settings like throttling, logging, and endpoint configurations.

# How do you integrate AWS Lambda with API Gateway?
Answer: You can integrate AWS Lambda with API Gateway by setting up a Lambda function as the backend for an API endpoint. When a request is received, API Gateway triggers the Lambda function to process it.
