#! /bin/sh
TRAIN_PATH=../machine-tasks/SCAN/hard_attention/length_split/train.tsv
DEV_PATH=../machine-tasks/SCAN/hard_attention/length_split/validation.tsv
TEST_PATH=../machine-tasks/SCAN/hard_attention/length_split/test.tsv

EMB_SIZE=16
H_SIZE=512
DROPOUT_ENCODER=0
DROPOUT_DECODER=0
EPOCH=20
PRINT_EVERY=200
SAVE_EVERY=50
ATTN='pre-rnn'
ATTN_METHOD='mlp'
BATCH_SIZE=16

CELL='gru'
echo 'BASELINE GRU'
EXPT_DIR=models/guided/gru/1
LOG_FILE=baseline_gru.log
python3 ../machine/train_model.py --ignore_output_eos --use_attention_loss --train $TRAIN_PATH --dev $DEV_PATH --monitor $TEST_PATH --output_dir $EXPT_DIR --write-logs $LOG_FILE --print_every $PRINT_EVERY --embedding_size $EMB_SIZE --hidden_size $H_SIZE --rnn_cell $CELL --attention $ATTN --epoch $EPOCH --save_every $SAVE_EVERY --attention_method $ATTN_METHOD --batch_size $BATCH_SIZE --dropout_p_encoder $DROPOUT_ENCODER --dropout_p_decoder $DROPOUT_DECODER --teacher_forcing_ratio 0

CELL='gru'
echo 'BASELINE GRU'
EXPT_DIR=models/guided/gru/2
LOG_FILE=baseline_gru.log
python3 ../machine/train_model.py --ignore_output_eos --use_attention_loss --train $TRAIN_PATH --dev $DEV_PATH --monitor $TEST_PATH --output_dir $EXPT_DIR --write-logs $LOG_FILE --print_every $PRINT_EVERY --embedding_size $EMB_SIZE --hidden_size $H_SIZE --rnn_cell $CELL --attention $ATTN --epoch $EPOCH --save_every $SAVE_EVERY --attention_method $ATTN_METHOD --batch_size $BATCH_SIZE --dropout_p_encoder $DROPOUT_ENCODER --dropout_p_decoder $DROPOUT_DECODER --teacher_forcing_ratio 0

CELL='gru'
echo 'BASELINE GRU'
EXPT_DIR=models/guided/gru/3
LOG_FILE=baseline_gru.log
python3 ../machine/train_model.py --ignore_output_eos --use_attention_loss --train $TRAIN_PATH --dev $DEV_PATH --monitor $TEST_PATH --output_dir $EXPT_DIR --write-logs $LOG_FILE --print_every $PRINT_EVERY --embedding_size $EMB_SIZE --hidden_size $H_SIZE --rnn_cell $CELL --attention $ATTN --epoch $EPOCH --save_every $SAVE_EVERY --attention_method $ATTN_METHOD --batch_size $BATCH_SIZE --dropout_p_encoder $DROPOUT_ENCODER --dropout_p_decoder $DROPOUT_DECODER --teacher_forcing_ratio 0

CELL='gru'
echo 'BASELINE GRU'
EXPT_DIR=models/guided/gru/4
LOG_FILE=baseline_gru.log
python3 ../machine/train_model.py --ignore_output_eos --use_attention_loss --train $TRAIN_PATH --dev $DEV_PATH --monitor $TEST_PATH --output_dir $EXPT_DIR --write-logs $LOG_FILE --print_every $PRINT_EVERY --embedding_size $EMB_SIZE --hidden_size $H_SIZE --rnn_cell $CELL --attention $ATTN --epoch $EPOCH --save_every $SAVE_EVERY --attention_method $ATTN_METHOD --batch_size $BATCH_SIZE --dropout_p_encoder $DROPOUT_ENCODER --dropout_p_decoder $DROPOUT_DECODER --teacher_forcing_ratio 0

CELL='gru'
echo 'BASELINE GRU'
EXPT_DIR=models/guided/gru/5
LOG_FILE=baseline_gru.log
python3 ../machine/train_model.py --ignore_output_eos --use_attention_loss --train $TRAIN_PATH --dev $DEV_PATH --monitor $TEST_PATH --output_dir $EXPT_DIR --write-logs $LOG_FILE --print_every $PRINT_EVERY --embedding_size $EMB_SIZE --hidden_size $H_SIZE --rnn_cell $CELL --attention $ATTN --epoch $EPOCH --save_every $SAVE_EVERY --attention_method $ATTN_METHOD --batch_size $BATCH_SIZE --dropout_p_encoder $DROPOUT_ENCODER --dropout_p_decoder $DROPOUT_DECODER --teacher_forcing_ratio 0
