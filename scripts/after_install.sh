#!/bin/bash

# Navigate to the application directory
cd /opt/brokenauthdemo

# If the application is not pre-built, publish it
# (Assuming the project files are in the deployment bundle)
dotnet publish -c Release -o /opt/brokenauthdemo/publish

# Set permissions (if needed)
sudo chmod -R 755 /opt/brokenauthdemo/publish