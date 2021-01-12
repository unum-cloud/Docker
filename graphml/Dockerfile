FROM nvidia/cuda:11.1-base-ubuntu20.04

RUN apt-get update && apt-get -y install python3-pip

RUN pip3 install \
    # PyTorch version for CUDA 11
    # https://pytorch.org
    torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio===0.7.2 -f https://download.pytorch.org/whl/torch_stable.html

RUN pip3 install \
    setuptools wheel \
    # Extracting data from HTML pages
    # https://pypi.org/project/beautifulsoup4/
    beautifulsoup4 \
    # Networks management software
    # https://pypi.org/project/networkx/
    networkx \
    # Connecting to MongoDB backup store
    # https://pypi.org/project/pymongo/
    pymongo \
    # PyTorch BigGraph
    # PBG_INSTALL_CPP=1 pip install .
    # https://github.com/facebookresearch/PyTorch-BigGraph
    torchbiggraph \
    # Transformers library powered by PyTorch
    # https://huggingface.co/transformers/installation.html#installation-with-pip
    transformers[torch] \
    # General-purpose text-processing library in Python
    # https://spacy.io/usage
    spacy \
    # Vizualization software with simple Python interface
    # https://www.streamlit.io
    streamlit \
    # Jupyter Lab for experiments
    # https://jupyter.readthedocs.io/en/latest/install.html
    jupyterlab 

