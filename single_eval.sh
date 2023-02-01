DATA_PATH=/home/quzha/yizhu1/moe_llm/fairseq/wikitext-103-raw
MODEL_PATH=/home/quzha/yizhu1/moe_model/en_moe_lm_15b/model.pt
python -m fairseq_cli.eval_lm $DATA_PATH \
  --path $MODEL_PATH \
  --gen-subset valid \
  --sample-break-mode none \
  --tokens-per-sample 2048 \
  --batch-size 1 \
  --fp16 \
  --output-word-probs \
  --is-moe \
  --distributed-world-size 4 \
  --model-overrides "{'world_size': 64, 'moe_eval_capacity_token_fraction': 0.05}"