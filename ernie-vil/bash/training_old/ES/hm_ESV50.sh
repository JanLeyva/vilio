#bash -x ./env.sh

### VGATT 50

mv ./data/hm/hm_vg10100.tsv ./data/hm/HM_gt_img.tsv
mv ./data/hm/hm_vg5050.tsv ./data/hm/HM_img.tsv

bash run_finetuning.sh hm conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./data/erniesmall/params \
train \
2500

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_2500train \
./data/log \
dev_seen ESV50 False

# SUB 1

bash run_finetuning.sh hm conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250train \
trains1 \
1250

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250trains1 \
./data/log \
dev_seens1 ESV50 False

# SUB2

bash run_finetuning.sh hm conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250train \
trains2 \
1250

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250trains2 \
./data/log \
dev_seens2 ESV50 False

# SUB3

bash run_finetuning.sh hm conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250train \
trains3 \
1250

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250trains3 \
./data/log \
dev_seens3 ESV50 False

### TRAINDEV

bash run_finetuning.sh hm conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./data/erniesmall/params \
traindev \
2500

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_2500traindev \
./data/log \
test_seen ESV50 False

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_2500traindev \
./data/log \
test_unseen ESV50 False

# SUB 1

bash run_finetuning.sh hm conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250traindev \
traindevs1 \
1250

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250traindevs1 \
./data/log \
test_seens1 ESV50 False

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250traindevs1 \
./data/log \
test_unseens1 ESV50 False

# SUB2

bash run_finetuning.sh hm conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250traindev \
traindevs2 \
1250

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250traindevs2 \
./data/log \
test_seens2 ESV50 False

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250traindevs2 \
./data/log \
test_unseens2 ESV50 False

# SUB3

bash run_finetuning.sh hm conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250traindev \
traindevs3 \
1250

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250traindevs3 \
./data/log \
test_seens3 ESV50 False

bash run_inference.sh hm "" val conf/hm/model_conf_hm \
./data/erniesmall/vocab.txt \
./data/erniesmall/ernie_vil_config.base.json \
./output_hm/step_1250traindevs3 \
./data/log \
test_unseens3 ESV50 True