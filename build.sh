docker build --tag unum/devcontainers:vscode-cpp20 vscode-cpp20
docker build --tag unum/devcontainers:vscode-cpp20-cuda11 vscode-cpp20-cuda11
docker build --tag unum/devcontainers:jupyter-graphml jupyter-graphml

# https://docs.docker.com/engine/reference/commandline/push/#push-all-tags-of-an-image
docker image push --all-tags unum/devcontainers

docker push ghcr.io/unumam/containers:vscode-cpp20
