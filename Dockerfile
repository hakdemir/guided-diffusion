FROM nvidia/cuda:11.2.2-cudnn8-devel-ubuntu20.04

ENV PYTHONUNBUFFERED=1

RUN apt-get update --fix-missing -y

RUN apt-get install -y python3 python3-pip git

RUN pip3 install --upgrade pip

RUN pip3 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio===0.9.0 -f https://download.pytorch.org/whl/torch_stable.html

RUN pip3 install pydicom blobfile visdom==0.1.8.9 scikit-learn==1.1 geomloss==0.2.4 h5py==3.7.0 wandb einops

EXPOSE 5000