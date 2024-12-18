# Base image
FROM nginx:latest

# Install necessary utilities
RUN apt-get update && apt-get install -y bash

# Copy entrypoint script to the container
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set ENTRYPOINT to the shell script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# CMD provides default environment (development)
CMD ["development"]
