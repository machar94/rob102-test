FROM debian:buster

USER root

# Install custom tools, runtime, etc.
RUN apt-get update \
    && apt-get install -y \
    # C++ tools
    build-essential \
    # Cmake
    cmake \
    # Cleanup
    && rm -rf /var/lib/apt/lists/*
