#!/bin/bash

# Define the deployment directory
deployment_dir="/root/Nodejs_deployement_new_cicd/node_deployment"

# Create the node_modules directory inside the deployment directory
mkdir "$deployment_dir"/node_modules

# Navigate to the node_modules directory
cd "$deployment_dir"/node_modules

# Install npm dependencies
npm install
