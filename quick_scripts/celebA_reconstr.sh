python -u ./src/phase_retrieval.py \
    --pretrained-model-dir=./models/celebA_64_64/ \
    \
    --dataset celebA \
    --input-type full-input \
    --input-path-pattern "./images/*.jpg" \
    --num-input-images 1 \
    --batch-size 1 \
    \
    --measurement-type gaussian \
    --noise-std 0 \
    --num-measurements 500 \
    \
    --model-types dcgan \
    --mloss1_weight 0.0 \
    --mloss2_weight 1.0 \
    --zprior_weight 0.0 \
    --lmbd 0.0 \
    \
    --optimizer-type adam \
    --learning-rate 0.1 \
    --momentum 0.9 \
    --max-update-iter 500 \
    --num-random-restarts 1 \
    \
    --not-lazy \
    --print-stats \
    --checkpoint-iter 1 \
    --image-matrix 1
