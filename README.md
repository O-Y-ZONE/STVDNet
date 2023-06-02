# STVDNet：Spatio Temporal Interactive Video Deraining Network
# Requirements and Dependencies
* Ubuntu 22.04, cuda 11.3 or windows10 ,cuda 11.3
* Python 3.8, Pytorch 1.12.0, torchvision 0.13.0

# Prepare Datasets
We provide datasets for testing, you can download NTURain datasets [here](https://pan.baidu.com/s/1ltVpPKvdzeh_h-wbubG29A). Password(sg4n).

# Download pre-train model
We provide the pre-train model, you can download our checkpoint to test our network. [pre-train](https://pan.baidu.com/s/1fJJvURofSG6-N5D4IuVK9g). Password (kw7s)

# Testing pipelines
You need firstly download the testing dataset of [NTURain]([https://github.com/hotndy/SPAC-SupplementaryMaterials](https://pan.baidu.com/s/1ltVpPKvdzeh_h-wbubG29A)) and decompression it.

+ NTURain synthetic data set:
    ```
        python test.py --data_root /media/derain/NTU-derain --eval_file data/Dataset_Testing_Synthetic.json 
    ```

## Results 
Example results on the RainSynLight25 and NTURain. From left to right are Input, Efficient Derain, ESTINet, PReNet, VRGNet, STVDNet(ours).

<img src=https://github.com/O-Y-ZONE/STVDNet/blob/main/image/results.png>  

Example result of real rain.

<img src=https://github.com/O-Y-ZONE/STVDNet/blob/main/image/real.png> 
