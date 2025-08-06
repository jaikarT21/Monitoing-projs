#! /bin/bash 

# Update and install HTTPS transport
sudo apt update && sudo apt install -y wget apt-transport-https

# Import Microsoft package signing key
wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

# Update package list after adding MS repo
sudo apt update

# Install .NET SDK (choose your version — example .NET 8)
sudo apt install -y dotnet-sdk-8.0

dotnet --version


#run the donet commands in src folder : 
Restore, Build, and Run the .NET app
From the project root (where .csproj is located):


-------------------------------------------------------
# Restore NuGet dependencies
dotnet restore

# Build project
dotnet build

# Run application
dotnet run
If it’s a published executable:

dotnet publish -c Release
dotnet bin/Release/net8.0/YourApp.dll

sudo apt install -y dotnet-runtime-8.0

-----------------------------------------------------------------


