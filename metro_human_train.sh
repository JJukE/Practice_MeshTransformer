CUDA_VISIBLE_DEVICES=0,1,2,3,4,5 OMP_NUM_THREADS=1 \
       python -m torch.distributed.launch --nproc_per_node=6 \
       --nnodes=1 --node_rank=0 \
       metro/tools/run_metro_bodymesh.py \
       --train_yaml ~/dev/datasets/Tax-H36m-coco40k-Muco-UP-Mpii/train.yaml \
       --val_yaml ~/dev/datasets/human3.6m/valid.protocol2.yaml \
       --arch hrnet-w64 \
       --num_workers 4 \
       --per_gpu_train_batch_size 20 \
       --per_gpu_eval_batch_size 20 \
       --num_hidden_layers 4 \
       --num_attention_heads 4 \
       --lr 1e-4 \
       --num_train_epochs 30 \
       --input_feat_dim 2051,512,128 \
       --hidden_feat_dim 1024,256,128