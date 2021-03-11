FROM debian:buster

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
