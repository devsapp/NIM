#!/bin/sh

URL="https://dipper-cache-cn-shanghai.oss-cn-shanghai-internal.aliyuncs.com/nimcache"
TARGET="/mnt/auto"

files="
    huggingface/hub/version.txt
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/refs/0.11.1%2B14957bf8-l40sx1-fp16-throughput-lora-lora.1.1.2.17578501
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/refs/0.11.1%2B14957bf8-l40sx1-fp8-throughput.1.1.2.17547653
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/refs/hf-3990259-tool-calling
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp16-throughput-lora-lora.1.1.2.17578501/LICENSE.txt
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp16-throughput-lora-lora.1.1.2.17578501/NOTICE.txt
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp16-throughput-lora-lora.1.1.2.17578501/checksums.blake3
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp16-throughput-lora-lora.1.1.2.17578501/config.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp16-throughput-lora-lora.1.1.2.17578501/metadata.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp16-throughput-lora-lora.1.1.2.17578501/rank0.engine
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp8-throughput.1.1.2.17547653/LICENSE.txt
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp8-throughput.1.1.2.17547653/NOTICE.txt
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp8-throughput.1.1.2.17547653/checksums.blake3
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp8-throughput.1.1.2.17547653/config.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp8-throughput.1.1.2.17547653/metadata.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/0.11.1+14957bf8-l40sx1-fp8-throughput.1.1.2.17547653/rank0.engine
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/README.md
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/checksums.blake3
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/config.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/generation_config.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/model-00001-of-00003.safetensors
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/model-00002-of-00003.safetensors
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/model-00003-of-00003.safetensors
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/model.safetensors.index.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/params.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/special_tokens_map.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/tokenizer.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/tokenizer.model
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/tokenizer.model.v3
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/tokenizer_config.json
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/snapshots/hf-3990259-tool-calling/tool_use_config.json
"

# 提前创建文件夹，避免由于并发创文件夹导致报错
echo "$files" | xargs -I {} dirname {} | xargs -I {} mkdir -p "${TARGET}/{}"

echo "$files" | xargs -P32 -I {} bash -c "./aria2c -x 16 -s 16 --allow-overwrite=true -c \"\$(echo '${URL}/{}' | sed 's/\+/%2B/g')\" --dir \"${TARGET}\"  --out \"{}\" --console-log-level=error"
