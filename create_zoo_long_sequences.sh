#! /bin/sh
TRAIN_PATH=../machine-tasks/LookupTablesIgnoreEOSLength4/train.tsv
DEV_PATH=../machine-tasks/LookupTablesIgnoreEOSLength4/validation.tsv
TEST_PATH=../machine-tasks/LookupTablesIgnoreEOSLength4/heldout_tables.tsv

TEST_PATH_1=../machine-tasks/LookupTablesIgnoreEOSLength4/heldout_compositions.tsv
TEST_PATH_2=../machine-tasks/LookupTablesIgnoreEOSLength4/heldout_inputs.tsv
TEST_PATH_3=../machine-tasks/LookupTablesIgnoreEOSLength4/heldout_tables.tsv
TEST_PATH_4=../machine-tasks/LookupTablesIgnoreEOSLength4/new_compositions.tsv
TEST_PATH_5=../machine-tasks/LookupTablesIgnoreEOSLength4/longer_seen_5.tsv
TEST_PATH_6=../machine-tasks/LookupTablesIgnoreEOSLength4/longer_new_5.tsv
TEST_PATH_7=../machine-tasks/LookupTablesIgnoreEOSLength4/longer_incremental_5.tsv


EMB_SIZE=16
H_SIZE=512
DROPOUT_ENCODER=0
DROPOUT_DECODER=0
EPOCH=200
PRINT_EVERY=500
SAVE_EVERY=500
ATTN='pre-rnn'
ATTN_METHOD='mlp'
BATCH_SIZE=100

CELL='gru'
echo 'BASELINE GRU'
EXPT_DIR=models/baseline2/gru
LOG_FILE=baseline_gru.log
python3 ../machine/train_model.py --train $TRAIN_PATH --dev $DEV_PATH --monitor $TEST_PATH --output_dir $EXPT_DIR --write-logs $LOG_FILE --print_every $PRINT_EVERY --embedding_size $EMB_SIZE --hidden_size $H_SIZE --rnn_cell $CELL --attention $ATTN --epoch $EPOCH --save_every $SAVE_EVERY --attention_method $ATTN_METHOD --batch_size $BATCH_SIZE --dropout_p_encoder $DROPOUT_ENCODER --dropout_p_decoder $DROPOUT_DECODER --ignore_output_eos --teacher_forcing_ratio 0 --full_focus

echo '\n\n\nEvaluating BASELINE GRU:'
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_1 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_2 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_3 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_4 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_5 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_6 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_7 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos

echo '\n\n'
echo 'AG GRU'
EXPT_DIR=models/AG2/gru
LOG_FILE=ag_gru.log
python3 ../machine/train_model.py --train $TRAIN_PATH --dev $DEV_PATH --monitor $TEST_PATH --output_dir $EXPT_DIR --write-logs $LOG_FILE --print_every $PRINT_EVERY --embedding_size $EMB_SIZE --hidden_size $H_SIZE --rnn_cell $CELL --attention $ATTN --epoch $EPOCH --save_every $SAVE_EVERY --attention_method $ATTN_METHOD --batch_size $BATCH_SIZE --dropout_p_encoder $DROPOUT_ENCODER --dropout_p_decoder $DROPOUT_DECODER --ignore_output_eos --teacher_forcing_ratio 0  --use_attention_loss --full_focus

echo '\n\n\nEvaluating AG GRU:'
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_1 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_2 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_3 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_4 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_5 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_6 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_7 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos


echo '\n\n'
CELL='lstm'
echo 'BASELINE LSTM'
EXPT_DIR=models/baseline2/lstm
LOG_FILE=baseline_lstm.log
python3 ../machine/train_model.py --train $TRAIN_PATH --dev $DEV_PATH --monitor $TEST_PATH --output_dir $EXPT_DIR --write-logs $LOG_FILE --print_every $PRINT_EVERY --embedding_size $EMB_SIZE --hidden_size $H_SIZE --rnn_cell $CELL --attention $ATTN --epoch $EPOCH --save_every $SAVE_EVERY --attention_method $ATTN_METHOD --batch_size $BATCH_SIZE --dropout_p_encoder $DROPOUT_ENCODER --dropout_p_decoder $DROPOUT_DECODER --ignore_output_eos --teacher_forcing_ratio 0 --full_focus

echo '\n\n\nEvaluating BASELINE LSTM:'
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_1 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_2 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_3 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_4 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_5 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_6 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_7 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos

echo '\n\n'
echo 'AG LSTM'
EXPT_DIR=models/AG2/lstm
LOG_FILE=ag_lstm.log
python3 ../machine/train_model.py --train $TRAIN_PATH --dev $DEV_PATH --monitor $TEST_PATH --output_dir $EXPT_DIR --write-logs $LOG_FILE --print_every $PRINT_EVERY --embedding_size $EMB_SIZE --hidden_size $H_SIZE --rnn_cell $CELL --attention $ATTN --epoch $EPOCH --save_every $SAVE_EVERY --attention_method $ATTN_METHOD --batch_size $BATCH_SIZE --dropout_p_encoder $DROPOUT_ENCODER --dropout_p_decoder $DROPOUT_DECODER --ignore_output_eos --teacher_forcing_ratio 0  --use_attention_loss --full_focus

echo '\n\n\nEvaluating AG LSTM:'
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_1 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_2 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_3 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_4 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_5 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_6 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos
python ../machine/evaluate.py --checkpoint_path $EXPT_DIR --test_data $TEST_PATH_7 --batch_size $BATCH_SIZE --attention $ATTN --attention_method $ATTN_METHOD --use_attention_loss --ignore_output_eos







