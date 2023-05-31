# STVDNet：Spatio Temporal Interactive Video Deraining Network
# Requirements and Dependencies
* Ubuntu 22.04, cuda 11.3 or windows10 ,cuda 11.3
* Python 3.8, Pytorch 1.12.0, torchvision 0.13.0

# Training pipelines
1. Download the NTURain dataset from [here](https://github.com/hotndy/SPAC-SupplementaryMaterials), and prepare the training data as follows:
    - train command:
        ```python
            python train.py --epochs 200 --data_root ../media/synthetic_NTURain --train_file data/Dataset_Training_Synthetic.json --eval_file data/Dataset_Testing_Synthetic.json --val_mode all --batch_size 2 --input_residue --F_npic --backbone resnet18 --checkpoint_dir_C ./checkpoint/C --checkpoint_dir_F ./checkpoint/F --eval_num_batch 10000 --lr_C 0.0001 --lr_F 0.0001 --logdir ./log/ --use_bilstm --resume 
        ```

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Note that you should better put the synthetic and real training data sets into two different training folders.


# Testing pipelines
You need firstly download the testing dataset of [NTURain](https://github.com/hotndy/SPAC-SupplementaryMaterials) and decompression it.

+ NTURain synthetic data set:
    ```
        python test.py --data_root /media/derain/NTU-derain --eval_file data/Dataset_Testing_Synthetic.json 
    ```

## Results 
Example results on the RainSynLight25 and NTURain. From left to right are Input, Efficient Derain, ESTINet, PReNet, VRGNet, STVDNet(ours).

<img src=https://github.com/O-Y-ZONE/STVDNet/blob/main/image/results.png>  

Example result of real rain.

<img src=https://github.com/O-Y-ZONE/STVDNet/blob/main/image/real.png> 
