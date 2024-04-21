#!/bin/bash

# Define the paths
deployment_dir="/root/Nodejs_deployement_new_cicd/node_deployment"
new_app_path="/root/Nodejs_deployement_new_cicd/node_deployment/app.js"
new_package_json_path="/root/Nodejs_deployement_new_cicd/node_deployment/package.json"

# Remove the existing app.js file if it exists
if [ -f "$deployment_dir/app.js" ]; then
  rm "$deployment_dir/app.js"
fi

# Remove the existing package.json file if it exists
if [ -f "$deployment_dir/package.json" ]; then
  rm "$deployment_dir/package.json"
fi

# Copy the new app.js and package.json files to the deployment directory
cp "$new_app_path" "$deployment_dir/app.js"
cp "$new_package_json_path" "$deployment_dir/package.json"

# Install dependencies using npm
cd "$deployment_dir"
npm install
