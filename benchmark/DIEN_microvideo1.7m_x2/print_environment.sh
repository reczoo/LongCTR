#!/bin/bash

# cd /cache/wheels
# # pip install torch==1.11.0 torchvision==0.12.0 torchaudio==0.11.0
# # pip install torch==1.10.2 torchvision==0.11.3 torchaudio==0.10.2
# pip install h5py==2.8.0
# pip install keras_preprocessing==1.1.2

echo "=================== Environments ====================="
lscpu | grep "Model name"
free -h | grep "Mem"
/usr/local/cuda/bin/nvcc --version | grep "Cuda compilation"
nvidia-smi
python -c 'import sys; print("python", ".".join(map(str, sys.version_info[:3])))'
python -c 'import torch; print("torch", torch.__version__)'
python -c 'import pandas; print("pandas", pandas.__version__)'
python -c 'import numpy; print("numpy", numpy.__version__)'
python -c 'import scipy; print("scipy", scipy.__version__)'
python -c 'import sklearn; print("sklearn", sklearn.__version__)'
python -c 'import yaml; print("pyyaml", yaml.__version__)'
python -c 'import h5py; print("h5py", h5py.__version__)'
python -c 'import tqdm; print("tqdm", tqdm.__version__)'
python -c 'import keras_preprocessing; print("keras_preprocessing", keras_preprocessing.__version__)'
python -c 'import polars; print("polars", polars.__version__)'