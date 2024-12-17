# Elastic load balancer:
1. Aws elb is the distribution of traffic across multiple targets (like ec2 instances) to ensure that there is no single instance is overwhelmed. Think of like a traffic cop directing cars to different parking lots to prevent congestion.

# Types of ELB:
1.	ALB (application load balancer)
-> An ALB (Application Load Balancer) is a service that evenly distributes incoming traffic to multiple EC2 instances to improve performance and avoid overloading any server.
-> It works at the application layer (HTTP/HTTPS) and can route traffic based on rules, like specific URLs or headers
2.	NLB (network load balancer)
-> An NLB (Network Load Balancer) is a service that distributes traffic across multiple servers but works at the network layer (TCP/UDP).
-> It is designed for high-performance and low-latency traffic and can handle millions of requests per second.
3.	CLB (classic load balancer)
-> A CLB (Classic Load Balancer) is an older load balancer in AWS that works at both the application (HTTP/HTTPS) and network (TCP) layers.
-> It is simpler but less advanced compared to ALB and NLB, and is mainly used for basic load balancing tasks
4.	GWLB (gateway load balancer)
-> GWLB (Gateway Load Balancer): Manages traffic for third-party virtual appliances like firewalls.

# What is sticky sessions in ELB?
Answer: Sticky sessions ensure that traffic from a user is always routed to the same instance. It is useful for maintaining user sessions.

# The main differences between ALB, NLB, and CLB are:

ALB (Application Load Balancer):
Works at the application layer (Layer 7).
Routes traffic based on URLs, headers, or other content.
Best for web apps needing complex routing.

NLB (Network Load Balancer):
Works at the network layer (Layer 4).
Handles high-speed traffic with low latency.
Best for real-time or high-performance applications.

CLB (Classic Load Balancer):
Works at both Layer 4 and Layer 7, but with fewer features.
Older and simpler, good for basic load balancing needs.

# the role of elb
-> In a high-availability architecture, the role of a load balancer is to distribute incoming traffic across multiple servers (or instances) to ensure that the application remains available and performs well, even if one or more servers fail.

# An Application Load Balancer (ALB) routes traffic to different targets (like EC2 instances) based on rules defined for the application layer (Layer 7). Here’s how it works:
How ALB Routes Traffic:
1. Listener:
An ALB has listeners that listen for incoming HTTP or HTTPS traffic. These listeners are configured to handle specific ports (usually 80 for HTTP and 443 for HTTPS).

2. Rules:
ALB uses rules to determine how to route the traffic. These rules are based on things like:
URL path (e.g., /images or /api).
Host header (e.g., www.example.com).
Query string or HTTP headers (e.g., User-Agent).
HTTP methods (e.g., GET, POST).

3. Target Groups:
Once ALB evaluates the rules, it sends the traffic to a target group. A target group is a collection of targets (like EC2 instances) that are registered with the ALB.

4. Routing Logic:
For example, if a request is made to www.example.com/images, the ALB might route that request to a specific target group that handles images (e.g., servers optimized for serving images).
If the request is for /api, it could be routed to a different target group where the API servers are located.
