#!/bin/bash

# Check if the PID file exists
if [ -f /var/run/brokenauthdemo.pid ]; then
  # Read the PID from the file
  PID=$(cat /var/run/brokenauthdemo.pid)
  
  # Kill the process
  kill $PID
  
  # Remove the PID file
  rm /var/run/brokenauthdemo.pid
fi