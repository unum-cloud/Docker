#!/bin/sh
#
# Generate a GitHub access token in
#       "Settings" -> "Developer Settings" -> "Personal Access Token"
# Then authenticate by passing that token as password:
#       docker login ghcr.io -u ashvardanian
#       docker login https://docker.pkg.github.com -u ashvardanian

docker build --tag unumam/vscode-cpp20 vscode-cpp20 &&
    docker tag unumam/vscode-cpp20 docker.pkg.github.com/unumam/docker/vscode-cpp20 &&
    docker image push --all-tags docker.pkg.github.com/unumam/docker/vscode-cpp20

docker build --tag unumam/vscode-cpp20-cuda11 vscode-cpp20-cuda11 &&
    docker tag unumam/vscode-cpp20-cuda11 docker.pkg.github.com/unumam/docker/vscode-cpp20-cuda11 &&
    docker image push --all-tags docker.pkg.github.com/unumam/docker/vscode-cpp20-cuda11

docker build --tag unumam/vscode-graphml vscode-graphml &&
    docker tag unumam/vscode-graphml docker.pkg.github.com/unumam/docker/vscode-graphml &&
    docker image push --all-tags docker.pkg.github.com/unumam/docker/vscode-graphml
