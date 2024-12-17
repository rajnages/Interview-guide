# eks
Amazon Elastic Kubernetes Service (EKS) is a managed service that makes it easy to run Kubernetes on AWS.  
# Think of it like this:
Kubernetes is like a powerful toolbox for managing containers (small packages of software). But setting up and maintaining this toolbox can be tricky. EKS takes care of all the hard work, so you can focus on using the tools to build and run your applications

# kubernates architecture:
=> control plane
1. API Server: Handles requests (like creating pods or services) and store the all info in etcd.
2. etcd: Stores cluster data, like the state of your pods and nodes.
3. Controller Manager: Manages background tasks (e.g., ensuring desired state).
4. kube Scheduler: Decides where to place pods on the available worker nodes and continuously comminicated with api server.
=> worker plane
1. kubelet -> is running on daemon sets. and it's ensures that Makes sure containers run properly.
2. kube proxy -> Manages networking for pods.
3. container runtime(containerd) ->  Runs the containers inside pods.

# eks architecture:
-> eks control plane
1. eks controller, fargate controller
2. kube-api server
3. etcd, kube Scheduler
4. container runtime(docker d)
-> eks worker plane
1. kubelet
2. kube proxy
3. dockerd

# Main Difference:
1. Kubernetes: The user manages everything, including both the control plane and worker nodes.
2. EKS: AWS manages the control plane (master node), and the user manages the worker nodes.
3. Kube-API Server:
This is the same API server as in Kubernetes, but AWS manages it. It handles all requests and communication between users and the cluster.
4. kubelet -> daemon service running
5. all components are running -> inside pod's only
6. only access etcd have apiserver

# disadvantages of Docker swarm, docker containers
1. ns
2. rbac
3. env secrets
4. health probs
5. helm charts
6. tls -> secrets


# differnece between docker and kubernates:
1. docker engine is a container runtime to run containers
2. kubernates is orchestrator which manages the host it also ensure that there is no downtime.


# Control Plane (Manages the cluster):
1. API Server:
- Acts as the entry point for all user and system requests to the Kubernetes cluster.
- It handles RESTful operations (like creating pods, services, etc.).
- Communicates with all components and stores cluster data in etcd.

2. etcd:
- A key-value store that holds all cluster information.
- Stores the state of pods, nodes, services, and more.
- It’s the source of truth for the entire Kubernetes cluster.

3. Controller Manager:
- Runs background tasks to ensure the cluster state matches the desired state.
- Example: If a pod crashes, it ensures a replacement pod is created.

4. Kube Scheduler:
- Decides where to run new pods by analyzing available worker nodes.
- Continuously communicates with the API Server to ensure optimal placement of workloads.

# Worker Plane (Executes the workloads):
1. Kubelet:
- A daemon running on each worker node.
- Ensures the containers (inside pods) are running correctly as specified by the control plane.
- It communicates with the API Server to get instructions and reports the node's status back.

2. Kube Proxy:
- Handles networking for the pods on the node.
- Ensures that services can communicate with each other inside the cluster and outside.

3. Container Runtime (e.g., containerd):
- Runs the containers inside the pods.
- It pulls container images and starts/stops containers.

# Why We Use Master Node in EKS
- In self-hosted Kubernetes, both master nodes and worker nodes are managed by the customer. For example, in a three-tier architecture, managing the master plane (API Server, etcd, etc.) can be complex and time-consuming, adding management overhead.
Instead of managing the master node ourselves, we can use a cloud provider like AWS EKS, where the master plane is fully controlled by AWS, allowing us to focus only on managing worker nodes.
