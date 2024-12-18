#!/bin/bash

# Get the environment from CMD or default to development
ENVIRONMENT=$1

# Create the index.html file based on the environment
if [ "$ENVIRONMENT" == "development" ]; then
    echo "<h1>Welcome to the Development Page</h1>" > /usr/share/nginx/html/index.html
else
    echo "<h1>Welcome to the Production Page</h1>" > /usr/share/nginx/html/index.html
fi

# Start Nginx in the foreground
nginx -g 'daemon off;'
