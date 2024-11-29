#!/bin/sh

URL="https://dipper-cache-cn-shanghai.oss-cn-shanghai-internal.aliyuncs.com/nimcache"
TARGET="/mnt/auto"

files="
    huggingface/hub/version.txt
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/07c34deb60e8af101bd019e930c61bc3
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/10970ff07de4dedcb007f44a1d499493-1449
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/1d10d10d55469f4a7176e5c042b016e4-2775
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/261a7f83c23580beb1ccfa6c50ada27d
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/45996e0f2621d932d6093b03dcffc0d3
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/4fca3c96171f212483088670d005e9b4
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/6030775fa154c1071124e8f9b1bc7669
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/68ffe0f54ee39dc88361eec8f9c89ed2
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/6d1cdb95e06d3ebbcdf5ee455c04ba46
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/871c888b54e94e8be90a064796cfb37b-944
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/8ee68c134bc60330fc8f44264bb20492
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/9915d0d249011a20cc6a62cb371474d3
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/9f996fa2395e70967bfb536194b60afb
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/a5d55268a08a3e3413b41f537437f856
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/a72ff232e2db8825aa16c04511e49760
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/ac76b663525e8736f23967115bf52af1-953
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/ad0b5d94e05f610fc098650a1d4d1ae6
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/af897c5967ae61d40ab8bc059e85beec
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/b57dbd70ad901c5e49066c373ebaebe4
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/b63f5e8e0a3c7c6db391ddf515f87f5a
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/c0f5485debeae0cc28d053f69632b305
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/da1abf39582d6c809a49d4e6a3bff56f-867
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/debda3ec31ed3fd98cb65c1ffa7900ee
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/e6844d1e69db0d2d7d1d93b551d9d39c
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/ef9bac785375c009ac748d1d8ef04c96
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/f150c76082a128265081f6398278f361
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/blobs/fb749601b409fcc0418b3b96f95fd7a9
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
