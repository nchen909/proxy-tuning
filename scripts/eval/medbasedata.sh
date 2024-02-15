export CUDA_VISIBLE_DEVICES=0,1,2,3

# Evaluating medbasedata with Qwen-1_8B expert
size=13
echo "Results dir: results/medbasedata"
python -m eval.medbasedata.run_eval \
    --data_dir data/eval/medbasedata/ \
    --save_dir results/medbasedata \
    --base_model_name_or_path /mntcephfs/data/med/fanyaxin/Qwen-7B \
    --expert_model_name_or_path /mntcephfs/data/med/chennuo/Qwen-1_8B-ALL-SFT-train \
    --eval_batch_size 10