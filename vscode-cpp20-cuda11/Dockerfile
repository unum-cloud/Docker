# Base image: https://github.com/microsoft/vscode-dev-containers/tree/master/containers/ubuntu
FROM unumam/vscode-cpp20

ENV DEBIAN_FRONTEND=noninteractive

# Install the latest version of CUDA 11.1
# https://askubuntu.com/a/1282104
# https://hub.docker.com/r/nvidia/cuda
# https://gitlab.com/nvidia/container-images/cuda/blob/master/dist/11.1/ubuntu20.04-x86_64/runtime/Dockerfile

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    rm -rf /var/lib/apt/lists/*
RUN add-apt-repository ppa:graphics-drivers/ppa
RUN apt-key adv --fetch-keys  http://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/7fa2af80.pub
RUN bash -c 'echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64 /" > /etc/apt/sources.list.d/cuda.list'
RUN bash -c 'echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu2004/x86_64 /" > /etc/apt/sources.list.d/cuda_learn.list'
RUN apt update && apt install -f -y cuda-11-2
# Once ready, set your path to point to CUDA binaries:
RUN echo 'export PATH=/usr/local/cuda-11.2/bin${PATH:+:${PATH}}' >> $HOME/.bashrc

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog

LABEL org.opencontainers.image.source https://github.com/unumam/docker