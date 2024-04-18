#!/bin/bash

cd /root/NodeJs_Deployemnt/node_deployment

# Start the server using PM2, which will restart if it's already running
pm2 restart SharksApp

