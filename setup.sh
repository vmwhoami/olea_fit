#!/bin/bash

# Ensure the script itself is executable
chmod +x setup.sh

# Set ownership to the current user to avoid root-related issues
sudo chown -R $(whoami) .

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
    if [ -d "backend/tmp/db" ]; then
        chmod -R 777 backend/tmp/db
    fi
fi

echo "Setup complete! You can now run your development environment."
