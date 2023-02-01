DATA_PATH=/home/quzha/yizhu1/moe_llm/fairseq/wikitext-103-raw
MODEL_PATH=/home/quzha/yizhu1/moe_model/en_moe_lm_15b/model.pt
python -m fairseq_cli.interactive $DATA_PATH \
  --path $MODEL_PATH \
  --task language_modeling \
  --sampling --beam 1 \
  --bpe gpt2 \
  --fp16 \
  --is-moe \
  --model-overrides "{'world_size': 64, 'moe_eval_capacity_token_fraction': 0.05}"