# What is Docker?
Docker is an open-source platform that automates the deployment, scaling, and management of applications using containerization. Containers are lightweight, standalone, and executable software packages that include everything needed to run an application: code, runtime, system tools, libraries, and settings. This ensures that applications run consistently across different computing environments.

# Example
Imagine you’re a developer working on a web app. With Docker, you can create a container that includes your app, its database and all the tools it needs. This container can then run on any machine without extra setup.

# What is a container?
-> Answer: A container is a lightweight, standalone, and executable software package that includes everything needed to run a piece of software. This includes the application code, libraries, and system tools.

# What is Docker Hub?
- Answer: Docker Hub is a cloud-based repository where Docker images can be stored and shared.

# What is the role of Docker daemon (dockerd)?
- Answer: The Docker daemon is responsible for managing Docker containers, images, networks, and volumes. It listens for Docker API requests and handles the creation, running, and stopping of containers

# What is the difference between docker build and docker-compose?
Answer:
- docker build is used to build Docker images from a Dockerfile.
- docker-compose is a tool for defining and running multi-container Docker applications. It uses a docker-compose.yml file to configure the services, networks, and volumes.

# What are Docker Volumes and how are they different from bind mounts?
Answer:
- Volumes are managed by Docker and are stored in a specific part of the host file system. They are better for persistent data storage.
- Bind mounts are directories or files from the host file system mounted into a container. Bind mounts are more flexible but less secure than volumes.

# What is a Docker container's lifecycle?
1. created,running,paused, stopped, dead

# what is architecture of docker
1. client -> like commands docker run, docker build, docker pull -> using http/https talk using docker host
2. Docker host -> Docker daemon, images, containers
3. Registry -> images, extensions, plugins

# What is a Virtual Machine (VM)?
A Virtual Machine (VM) is a software-based version of a computer. It runs on top of physical hardware but acts like a separate computer with its own operating system (OS) and resources (like CPU, memory, and storage).

# Example:
Imagine a physical computer is like an apartment building, and each VM is like a separate apartment. They share the same building (hardware) but are independent and can have their own unique setups (operating systems and apps).

-> A major difference is that containers do not require their own full-blown OS. In fact, all containers
on a single host share the host’s OS.
-> VMs are heavier, slower, and fully independent with their own OS.

# Why do we use Docker?
- Consistency: Docker ensures that an application works the same way, no matter where it is run (on your computer, on a server, or in the cloud).
- Portability: You can easily move containers between systems without worrying about compatibility issues.
- Efficiency: Containers use fewer resources than traditional virtual machines (VMs), making them faster and more lightweight.
- Simplifies Setup: You can bundle everything your app needs (code, tools, libraries) in a single container.
- Scaling: Makes it easy to scale applications up or down by quickly creating more containers.

# image
-> A Docker image is a blueprint or template for creating containers. It contains everything needed to run an application like code, dependicies, os.
-> image, Docker image, container image, and OCI image all mean the same thing.

# commands:
1. docker pull -a nginx => it will download the all versions of nginx -a -> all tags
2. docker images --digests => A digest is a unique, cryptographic identifier for a specific version of a Docker image.
3.  docker manifest inspect nginx | grep 'architecture\|os' => Check Multi-Platform Support: Verify which architectures (amd64, arm64, etc.) and operating systems (linux, windows, etc.) an image supports.
4.  docker rmi $(docker images -q) -f => multiple docker images deleted forcefully
5.

# restart policies
- always -> Always restart, no exceptions.
- unless-stopped ->  Restart unless manually stopped.
- on-failure -> Restart only on errors, optionally limited by retry count
# Dockerfile
- The Dockerfile is a plain-text document that tells Docker how to build the app and dependencies into a Docker image.

# difference between cmd and entrypoint:
1. ENTRYPOINT is used to define the main process that a container should always run.
2. CMD supplies default arguments to ENTRYPOINT, or, if no ENTRYPOINT is defined, it acts as the default command.
for example:
docker run -d -p 8080:80 --name development testing:v1
docker run -d -p 8081:80 --name production testing:v1 production

# difference between add and copy
1. Use COPY unless you specifically need the extra features of ADD (like handling tarballs or URLs).
2. copy only files and directories
3. add is same as copy but it has extra features that is handle with urls also

# components in dockerfile
1. FROM -> spefication for build an image
2. RUN -> executes the commands actually execution starts here and Adds new layers to the image with each command it runs.
3. WORKDIR ->  Makes it easier to manage paths in the image
4. EXPOSE -> Declares the ports the container will listen on.
5. ENV -> Sets environment variables inside the container.
6. volume -> Creates a mount point for data to persist outside the container.
7. arg -> Defines build-time variables.
8. label -> Adds metadata to the image.


# Press Ctrl-PQ to exit the container without terminating it. using docker run -it ubuntu:latest /bin/bash
# Open Container Initiative (OCI) :
- The Open Container Initiative is an open governance structure for the express purpose of creating open industry standards around container formats and runtimes.

# Docker engine main two components
1. Docker daemon
2. LXC (0.9 version)
- The Docker daemon was a monolithic binary – it contained all the code for API, the
runtime, image builds, and more.
- LXC provided the daemon with access to the fundamental building-blocks of containers
that existed in the Linux kernel. Things like namespaces and control groups (cgroups).
3. After LXC replaces the libcontainer

# Other components
1. ctr -> Useful for debugging or advanced operations; allows developers to work directly with containerd without using Docker.
2. containerd-shim-v2 ->  A shim layer between containerd and runc for managing containers. Keeps containers running even if containerd crashes or restarts, ensuring container lifecycle independence.
3. containerd-shim-v1 -> same as v2 but older functionality
4. containerd-shim -> Works to decouple the container runtime (e.g., runc) from the container engine (containerd) for better stability.

# components of Docker container runtime(containerd):
1. runc -> Handles the actual creation and running of containers by using Linux features like namespaces and cgroups. it's invoked by containerd to start and manage containers.
2. containerd -> Handles pulling images, managing snapshots, and interacting with low-level runtimes like runc.

# components of Docker Daemon(Dockerd):
1. dockerd -> Manages the overall lifecycle of containers, including building images, networking, and communicating with containerd.
2. docker -> Provides commands for interacting with the Docker daemon (dockerd), such as starting containers, pulling images, and managing volumes.

==========================================================================================================

# Docker compose:
=> volumes -> Volumes in Docker are a way to store data that can persist beyond the life of a container. When you delete a container, the data in volumes remains intact.
- named volumes -> Named volumes are volumes that are given a specific name when they are created.
- Anonymous Volumes ->  Anonymous volumes are automatically created by Docker when you don’t specify a name for the volume.
- Host Volumes (Bind Mounts)-> Host volumes (also called bind mounts) directly link a directory or file on the host machine to a directory inside the container.

=> Networks -> Networks in Docker allow containers to communicate with each other. Containers can be connected to the same network and can easily talk to one another using hostnames or IP addresses.

- Bridge Network: Default, used for containers on the same host.
- Host Network: Shares the host’s network stack, providing better performance.
- Overlay Network: Used for multi-host communication, mainly in Docker Swarm.
- None Network: No networking for the container.
- custom network: custom network is useful for inside container talking using dns names

# Docker compose:
- Docker Compose is a tool that helps you define and manage multi-container Docker applications. It allows you to use a simple YAML file (called docker-compose.yml) to define the services, networks, and volumes required for your application, and then manage them with a single command.

# Docker multi-stage build:
- Answer: Multi-stage builds allow you to use multiple FROM instructions in a Dockerfile. This is useful for creating smaller images by using intermediate containers for building and a final lightweight container for production.

# How do you troubleshoot Docker containers?
- Answer: Troubleshooting Docker containers can be done by:
- Using docker logs to view container logs.(docker logs  This command is used to view the output logs of a running or stopped container.)
- Using docker inspect to get container details.(docker nspect This command provides detailed information about a container or an image it shows output as a json)
- Running containers in interactive mode (docker run -it).
- Monitoring resource usage with docker stats.
- shows disk space (docker system df)

# How would you monitor Docker containers in a production environment?
- Answer: Docker containers can be monitored using docker stats, or third-party tools like Prometheus, Grafana, and Datadog.

# You are deploying a web application using Docker. How would you manage the configuration, logging, and scaling of the application?
- Answer: Use environment variables for configuration (via docker-compose.yml or docker run), set up logging using Docker logging drivers (e.g., json-file or syslog), and scale using Docker Compose for local scaling or Docker Swarm/Kubernetes for production.

-> Docker logging drivers:
1. json-file
2. syslog
3. fluentd
4. awslogs
5. gelf
6. journald
7. logentries
8. splunk
9. none

#  Scenario: Container Performance Monitoring
Question:
You notice that one of your Docker containers is using too much CPU and memory. How would you monitor and optimize the resource usage of the container?
Answer Guide:
Step 1: Use docker stats <container_id> to monitor real-time resource usage.
Step 2: Check for any resource limitations (CPU, memory) by inspecting the container using docker inspect.
Step 3: Set resource limits in your Docker configuration or docker run command with flags like --memory and --cpus.
Step 4: If necessary, adjust the application’s performance (e.g., database queries, garbage collection).
docker stats <container_id>
docker run --memory="500m" --cpus="1" <image_name>
docker prune -a -> it's delete all stoping containers

# --target
docker build --target build-stage .
target is used in Docker Compose is in the form of profiles,


===========================================================================================================

# Main difference between vms and containers
1. Virtual Machines: VMs run on a hypervisor, which virtualizes the underlying hardware. Each VM includes a full guest operating system (OS) along with the application and its dependencies.
2. Containers share the host OS kernel and isolate the application processes from the rest of the system. They package the application and its dependencies but do not include a separate OS.

# Difference between virtualization and containerization
# Containerization vs. Virtualization:
- Virtualization: Involves creating multiple virtual machines on a single physical host using a hypervisor. Each VM runs its own OS, which can be different from the host OS. This approach allows for running multiple OS instances on a single server.

- Containerization: Involves encapsulating an application and its dependencies into a container that runs on the host OS. Containers share the host OS kernel but operate in isolated user spaces. This method is more lightweight compared to virtualization and allows for running multiple processes simultaneously on a single OS instance.

- A hypervisor is software that allows one computer to run multiple virtual machines (VMs) simultaneously.

# Host example
- Imagine a physical server (the host) running a hypervisor. This hypervisor allows multiple virtual machines (guests) to operate on the same physical hardware. The host provides the necessary resources—such as CPU, memory, and storage—to these guest VMs, enabling them to function as independent systems.

# Docker archetecture explanation?
1. Docker engine -> The core of Docker, responsible for creating and managing containers.
 -> dockerd(docker daemon) => The Docker daemon runs on the host machine and is responsible for managing Docker objects, such as images, containers, networks, and volumes.
 -> Docker client / cli => The Docker client is a command-line interface (CLI) tool that allows users to interact with the Docker daemon through commands.(docker pull,push,run)
2. Docker images => Docker images are the building blocks of containers. They are read-only templates that contain the application code, runtime, system tools, libraries, and other dependencies.
3. Docker container => Docker containers are runnable instances of Docker images. They encapsulate the application and its dependencies, providing an isolated environment for execution
4. Docker Registries: Docker Registry is a centralized repository for storing and sharing Docker images. The default public registry is Docker Hub, where users can find a vast collection of images
5. Docker Compose is a tool for defining and running multi-container Docker applications. It uses a YAML file (docker-compose.yml) to specify services, networks, volumes, and other configurations required for the application.
6. Docker volumes are used for persisting data generated by and used by Docker containers. They provide a way for containers to store and share data independently of the container lifecycle, ensuring data persistence and portability.
7. Docker provides networking capabilities for containers to communicate with each other and with external networks. It uses software-defined networks (SDN) to create virtual networks, enabling connectivity and isolation. Users can create custom networks, connect containers to networks, and define network policies using Docker commands or Docker Compose.

-> Docker Daemon is a component of the Docker Engine.

# What happens when you run docker run hello-world? Explain step-by-step.
-> Docker Client Initiation:
- The Docker client (docker) receives the run command with the hello-world argument.

-> Communication with Docker Daemon:
- The Docker client communicates with the Docker daemon (dockerd), instructing it to run a container based on the "hello-world" image.

-> Image Retrieval:
- Local Image Check:
  The Docker daemon checks if the "hello-world" image is available locally on your system.
- Image Download (if necessary):
  If the image is not found locally, the Docker daemon pulls it from Docker Hub, the default public registry.

-> Container Creation:
- Using the "hello-world" image, the Docker daemon creates a new container instance.

-> Executing the Container:
- The Docker daemon starts the container, which runs the "hello-world" program.
This program outputs a message confirming that Docker is installed and functioning correctly.

-> Output Delivery:
- The output from the container is streamed back to the Docker client.
- The Docker client displays this output in your terminal.

# What is the difference between docker run, docker start, and docker exec?
docker run -> Creates and starts a new container from a specified image.
docker start -> Starts an existing, stopped container.
docker exec ->  Runs a new command in an already running container.

# What are multi-stage builds in Docker? Why are they useful for production deployments?
- Multi-stage builds in Docker involve using multiple FROM instructions within a single Dockerfile. Each FROM begins a new stage, allowing the segregation of build and runtime environments.
- main reason of behind the multi-stage reduce the image size for production environment
- example:
For instance, in a Node.js application, the Dockerfile might first use a Node.js image to install dependencies and build the application. In a subsequent stage, it could use a lightweight alpine image, copying only the built application and necessary dependencies. This strategy ensures that the final image is optimized for production.

# How do you optimize Docker image size? Give practical steps.
1. Starting with lightweight base images like alpine reduces unnecessary bloat
2. Implement Multi-Stage Builds: Separate the build environment from the runtime environment to include only necessary artifacts in the final image.
3. Minimize Layers -> Combine commands to reduce the number of layers in the image
3. Utilize .dockerignore File:
4. Clean Up After Package Installation: -> Remove package manager caches and temporary files after installing packages to reduce image size.

# How can you debug a container that exits immediately after starting?
the main reason because of this happening it typically indicates that the container's main process has completed its execution
1. check the logs -> docker logs container
2. review the docker file -> cmd command -> cmd ['echo','world']
3. docker run -it --entrypoint /bin/bash <image_name> -> then i will run same command use --entrypoint
4. docker inspect <container_id> --format='{{.State.ExitCode}}'
5. docker events --filter 'container=<container_id>'

