ROOT=../..
export PYTHONPATH=$ROOT:$PYTHONPATH

srun -p ${partition} --gres=gpu:1 python -u val.py \
  --model_RRSNet_path=${your_model} \ 
  --exp_name=RRSNet \
  --dataset=val_1st \
  --save_path=./results


