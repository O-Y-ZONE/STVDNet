#!/usr/bin/env bash

cd ..
python test.py --data_root /media/hdd/derain/NTU-derain \
               --eval_file /home/dxli/workspace/derain/proj/data/Dataset_Testing_Synthetic.json \
               --backbone resnet18 \
               --refinenet R_CLSTM_5 \
               --use_bilstm \
               --input_residue \
               --val_mode all \
	       --F_npic \
               --loadckpt \
               --loadckpt_C ./checkpoints/ntu/C/checkpoints_best_87.pth.tar\
               --loadckpt_F ./checkpoints/ntu/F/checkpoints_best_87.pth.tar \
               --out_dir ../proj/out/ntu/87


