#!/bin/bash

# Define the paths
deployment_dir="/root/Nodejs_deployement_new_cicd/node_deployment"
new_app_path="/root/Nodejs_deployement_new_cicd/node_deployment/app.js"

# Remove the existing app.js file if it exists
if [ -f "$deployment_dir/app.js" ]; then
  rm "$deployment_dir/app.js"
fi

# Copy the new app.js file to the deployment directory
cp "$new_app_path" "$deployment_dir/app.js"

# Install dependencies using npm
cd "$deployment_dir"
npm install
