docker build --tag unum/devcontainers:vscode-cpp20 vscode-cpp20
docker build --tag unum/devcontainers:vscode-cpp20-cuda11 vscode-cpp20-cuda11
docker build --tag unum/devcontainers:vscode-graphml vscode-graphml

docker image push --all-tags unum/devcontainers
