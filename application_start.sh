#!/bin/bash

cd /root/Nodejs_deployement_new_cicd/node_deployment


# Start the server using PM2, which will restart if it's already running
pm2 start app.js

