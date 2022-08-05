CUDA_VISIBLE_DEVICES=0,1,2,3,4,5 OMP_NUM_THREADS=1 \
       python -m torch.distributed.launch --nproc_per_node=6 \
       --nnodes=1 --node_rank=0 \
       metro/tools/run_metro_bodymesh.py \
       --val_yaml ~/dev/datasets/human3.6m/valid.protocol2.yaml \
       --arch hrnet-w64 \
       --num_workers 4 \
       --per_gpu_eval_batch_size 20 \
       --num_hidden_layers 4 \
       --num_attention_heads 4 \
       --input_feat_dim 2051,512,128 \
       --hidden_feat_dim 1024,256,128 \
       --run_eval_only \
       --resume_checkpoint ./models/metro_release/metro_h36m_state_dict.bin