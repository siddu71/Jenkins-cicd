# Use the official OpenJDK 11 image as a base
FROM openjdk:11-jdk

# Update system packages
RUN apt-get update -y

# Install necessary packages
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    software-properties-common

# Add Docker’s official GPG key and repository
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"

# Update system packages again after adding new repository
RUN apt-get update -y

# Install Docker
RUN apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io

# Verify Docker installation
RUN docker --version
