# DockerImages used in [Unum.am](https://unum.am)

## [cpp20](cpp20/Dockerfile)

A container for C++ 20 software development in a `.devcontainer` of **VSCode**.
Comes with GCC 10.2, GDB for debugging, modern CMake and Conan installed.

## [cpp20cuda11](cpp20cuda11/Dockerfile)

A container for C++ 20 + CUDA 11 software development in a `.devcontainer` of **VSCode**.
Like the [cpp20](#cpp20), it comes with GCC 10.2, GDB for debugging, modern CMake and Conan installed.
It also features, CUDA, cuBLAS for linear algebra, NCCL2 for multi-GPU communications.

## [graphml](graphml/Dockerfile)

A container for GraphML-related data-science workloads in **JupyterLab**. Comes with:

* CUDA 11
* PyTorch
* PyTorch-BigGraph
* NetworkX
* JupyterLab
* StreamLit
