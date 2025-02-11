#!/bin/bash

# Navigate to the published application directory
cd /opt/brokenauthdemo/bin/Release/net8.0

# Start the .NET application in the background
# Replace 'YourAppName.dll' with the actual name of your application's DLL
nohup dotnet BrokenAuthDemo.dll > /var/log/brokenauthdemo.log 2>&1 &

# Optionally, save the process ID (PID) for stopping the application later
echo $! > /var/run/brokenauthdemo.pid