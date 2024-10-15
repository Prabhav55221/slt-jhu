# Sign Language Transformers - Clone for JHU Project

This repo contains the training and evaluation code for the baseline paper [Sign Language Transformers: Sign Language Transformers: Joint End-to-end Sign Language Recognition and Translation](https://www.cihancamgoz.com/pub/camgoz2020cvpr.pdf). 
 
## Requirements
* Download the feature files using the `data/download.sh` script.

* Ensure paths are correct - Refer to config in CONFIGS for path.

* Create a conda or python virtual environment.

* Install required packages using the `requirements.txt` file. Please Change Torch Versions based on your CUDA and GPU installation.

    `pip3 install torch==1.9.1+cu111 torchvision==0.10.1+cu111 torchaudio==0.9.1 -f https://download.pytorch.org/whl/torch_stable.html`
    `pip install -r requirements.txt`
    `pip3 install tensorflow`

## Usage

  `python -m slttransformer train configs/sign.yaml` 

! Note that the default data directory is `./data`. If you download them to somewhere else, you need to update the `data_path` parameters in your config file. 

## Reference

Please cite the paper below if you use this code in your research:

    @inproceedings{camgoz2020sign,
      author = {Necati Cihan Camgoz and Oscar Koller and Simon Hadfield and Richard Bowden},
      title = {Sign Language Transformers: Joint End-to-end Sign Language Recognition and Translation},
      booktitle = {IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
      year = {2020}
    }