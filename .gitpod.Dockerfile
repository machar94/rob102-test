FROM debian:buster

USER root

# Install custom tools, runtime, etc.
RUN apt-get update \
    && apt-get install -y \
    # C++ tools
    && apt-get install build-essential
    # Cmake
    # && apt install snapd \
    # && snap install core \
    # && snap install cmake --classic \
    # Cleanup
    # && rm -rf /var/lib/apt/lists/*
