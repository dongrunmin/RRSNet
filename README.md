# RRSNet

PyTorch implementation of RRSNet: Reference-based Super-Resolution for Remote Sensing Image



## Dependencies

- Python 3.6+
- pyTorch >= 1.0
- CUDA 9.0 and gcc4.7 (for DCNv2 installation)
- Python packages: `pip install numpy opencv-python lmdb pyyaml`
- DCNv2 (Deformable Convolutional Networks V2, please refer to ./codes/models/archs/DCNv2/README.md) 



## Dataset Preparation (Reference-Based Remote Sensing Super-Resolution Dataset)

### Download Datasets

Training dataset can be downloaded [here](https://pan.baidu.com/s/1lDYW13DnVSQAW3hE7vGpWA), password:vro4

Test datasets can be found in `./dataset/val`.

### Preprocess Datasets

After downloading the training dataset, please put them in the folder `./dataset/train`.


`tar -xvzf train_data.tar.gz`

The training set is transformed into **LMDB** format for faster IO speed.


`cd ./dataset/data_script`


`python create_lmdb.py`

## Training

### To train an RRSNet model:

Before training, pre-trained vgg model need to be downloaded [here](https://download.pytorch.org/models/vgg19-dcbb9e9d.pth). Please put it in the folder `./codes/models/archs/pretrained_model`.

`cd ./codes/example/RRSNet`


`python train.py -opt options/RRSNet.yml`

### Train with Slurm 

`cd ./codes/example/RRSNet`


`sh train_slurm.sh` 

- Before running this code, please modify `train_slurm.sh` to your own configurations. 

- You can find your training results in `./codes/example/RRSNet/exp`

## Testing 

`cd ./codes/example/RRSNet`


`sh val.sh`

- Before running this code, please modify `val.sh` to your own configurations, e.g. the save path of your model.


## Acknowledgement
The code is based on [MMSR](https://github.com/open-mmlab/mmediting)


## Contact 
If you have any questions about our work, please contact <drm17@mails.tsinghua.edu.cn>








