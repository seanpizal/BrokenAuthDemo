#!/bin/bash
# Remove previous versions
# rm -rf /opt/brokenauthdemo/*
#!/bin/bash

# Update the package manager
sudo yum update -y

# Install the .NET 8.0 runtime
# Add the Microsoft package signing key
sudo rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm

# Install the .NET 8.0 runtime
sudo yum install -y dotnet-sdk-8.0

# Verify the installation
dotnet --version