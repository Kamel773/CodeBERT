#for i in 123456  1234 44 12345678 11850
for i in 123456  1234 44 12345678 11850
do
    echo $i
    python run_old.py \
        --output_dir=./Devign \
        --model_type=roberta \
        --tokenizer_name=microsoft/codebert-base \
        --model_name_or_path=microsoft/codebert-base \
        --do_test \
        --do_train \
        --do_eval \
        --train_data_file=/notebooks/CodeBert/Devign/train.jsonl \
        --test_data_file=/notebooks/CodeBert/Devign/test.jsonl \
        --eval_data_file=/notebooks/CodeBert/Devign/valid.jsonl \
        --epoch 3 \
        --block_size 512 \
        --train_batch_size 32 \
        --eval_batch_size 128 \
        --learning_rate 5e-5    \
        --max_grad_norm 1.0 \
        --evaluate_during_training \
        --seed $i  2>&1 | tee train.log
done




# --seed 123456 1234 44 12345678.  11850 we try 42, 45