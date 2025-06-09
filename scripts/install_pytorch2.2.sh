#!/bin/bash

# Conda 환경 생성
conda create -n bevformer-py310 python=3.10 -y
conda activate bevformer-py310

# PyTorch + CUDA 11.8 설치
pip install torch==2.2.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

# OpenMMLab 설치
pip install openmim
mim install mmengine==0.10.1
mim install mmcv==2.1.0
mim install mmdet==3.1.0
mim install mmdet3d==1.1.0

# BEVFormer 설치
pip install -v -e .
