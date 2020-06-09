### Total Flow

```.py
!git clone https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix 
cd pytorch-CycleGAN-and-pix2pix

pip install -r requirements.txt

!wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh && bash Anaconda3-5.2.0-Linux-x86_64.sh -bfp /usr/local

import sys
sys.path.append('/usr/local/lib/python3.6/site-packages')

!conda install pytorch torchvision cudatoolkit=10.1 -c pytorch --yes

!bash ./datasets/download_pix2pix_dataset.sh facades

!python -m pip install visdom
import visdom
visdom.__version__

!python train.py --dataroot ./datasets/facades --name facades_pix2pix --model pix2pix --direction BtoA
```
 AVG 50s/epoch
[Reference](https://leesh0523.tistory.com/entry/PyTorch-example-Cycle-GAN-%EB%94%B0%EB%9D%BC%ED%95%98%EA%B8%B0)
