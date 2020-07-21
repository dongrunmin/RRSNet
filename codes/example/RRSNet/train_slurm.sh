#!/bin/sh

ROOT=../..
export PYTHONPATH=$ROOT:$PYTHONPATH


TASK_NUM=16
srun -p ${partition} -n${TASK_NUM} --gres=gpu:8 --ntasks-per-node=8 \
    --job-name=RRSNet --kill-on-bad-exit=1 \
python -u train.py \
  -opt options/RRSNet.yml \
  --launcher slurm


