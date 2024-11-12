#!/bin/bash

# Make script executable for any user
chmod +x setup.sh

# Set permissions for the entire project
chmod -R 755 .

# Frontend setup
if [ -d "frontend" ]; then
    echo "Setting up frontend permissions..."
    mkdir -p frontend/node_modules
    chmod -R 777 frontend/node_modules
fi

# Backend setup
if [ -d "backend" ]; then
    echo "Setting up backend permissions..."
    chmod -R 777 backend/tmp
    chmod -R 777 backend/log
    # For Rails specific directories
    if [ -d "backend/tmp/db" ]; then
        chmod -R 777 backend/tmp/db
    fi
fi

echo "Setup complete! You can now run your development environment."