#!/bin/bash

sudo yum update -y

sudo yum install nginx -y

sudo systemctl start nginx

sudo systemctl enable nginx

echo "Hello!Implemented Terraform + Vault Infrastructure Deployment Successfully" > /usr/share/nginx/html/index.html
