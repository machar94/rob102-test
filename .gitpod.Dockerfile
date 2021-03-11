FROM debian:buster

# Install sudo and add privelages to docker user
RUN apt-get update && \
    apt-get -y install sudo
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER docker

# Install custom tools, runtime, etc.
RUN sudo apt-get update \
    && sudo apt-get install -y \
    # C++ tools
    && sudo apt-get install build-essential \
    # Cmake
    && sudo apt install snapd \
    && sudo snap install core \
    && sudo snap install cmake --classic \
    # Cleanup
    && sudo rm -rf /var/lib/apt/lists/*
