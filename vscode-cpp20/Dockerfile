# Base image: https://github.com/microsoft/vscode-dev-containers/tree/master/containers/ubuntu
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-20.04

# Configurtion: https://pspdfkit.com/blog/2020/visual-studio-code-cpp-docker/
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ENV DEBIAN_FRONTEND=noninteractive

# Update UID/GID if needed
RUN if [ "$USER_GID" != "1000" ] || [ "$USER_UID" != "1000" ]; then \
    groupmod --gid $USER_GID $USERNAME \
    && usermod --uid $USER_UID --gid $USER_GID $USERNAME \
    && chown -R $USER_UID:$USER_GID /home/$USERNAME; \
    fi

# Install tooling for HPC software development
RUN apt-get update && apt-get install -y --no-install-recommends \
    # GCC 10.2 with support for C++20 Concepts:
    # https://en.cppreference.com/w/cpp/compiler_support
    g++-10 \
    gdb \
    build-essential \
    cmake \
    git \
    git-lfs \
    ninja-build \
    ccache \
    zsh \
    python3-pip

# Cleaning
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Overwriting GCC version: https://askubuntu.com/a/26502
RUN rm /usr/bin/gcc && rm /usr/bin/g++ && ln -s /usr/bin/gcc-10 /usr/bin/gcc && ln -s /usr/bin/g++-10 /usr/bin/g++

RUN pip3 install -U autopep8 conan

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog
