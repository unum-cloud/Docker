docker build --tag unumam/dev:vscode-cpp20 vscode-cpp20
docker build --tag unumam/dev:vscode-cpp20-cuda11 vscode-cpp20-cuda11
docker build --tag unumam/dev:vscode-graphml vscode-graphml

docker tag unumam/dev:vscode-cpp20 docker.pkg.github.com/unumam/dockercontainers/dev:vscode-cpp20
docker tag unumam/dev:vscode-cpp20-cuda11 docker.pkg.github.com/unumam/dockercontainers/dev:vscode-cpp20-cuda11
docker tag unumam/dev:vscode-graphml docker.pkg.github.com/unumam/dockercontainers/dev:vscode-graphml

# https://docs.docker.com/engine/reference/commandline/push/#push-all-tags-of-an-image

# Generate a GitHub access token in
#       "Settings" -> "Developer Settings" -> "Personal Access Token"
# docker login ghcr.io -u ashvardanian
# docker login https://docker.pkg.github.com -u ashvardanian
docker image push --all-tags docker.pkg.github.com/unumam/dockercontainers/dev
