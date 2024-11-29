#!/bin/sh

URL="https://dipper-cache-cn-shanghai.oss-cn-shanghai-internal.aliyuncs.com/nimcache"
TARGET="/mnt/auto"

files="
    huggingface/hub/version.txt
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/10d4418fa4c616751fbda7b8a56f025a
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/25aae128e31869bb836248c33c59e164
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/2f9b1fc2567e0464c6f0091571f0b026-949
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/3232ecb79373c51d8620d901f871eee8
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/3329cf99aa82218877f1b3106492084d
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/369b581ab49bcb3d5551e8c082b9d516
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/3e710a79e58ddecbe63a8dffa7464658-3091
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/4731358b77ec5a2ba554b4aca0542a80-2
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/48baa16e45dad0432ae9128867df6910-953
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/5c221c009c69567afba7163734eb95a8
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/66eaec4cca7b7d583d6e82844e6f3029
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/6e7e0309232a0651ebe8764260b49162
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/6f784b41de60c9a27eb891958ce9ec1e
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/86a60d10acf31d1ab72398cec69d2e42-223
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/8b510bc871ef0f3cfb75cbad5c82c50b
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/a649e60d70d87e2b123f1ed24c222e2e
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/ae11ac3e9de8ad9f5255b00059fae525-937
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/b9d39cc4a474a43ed24a67631f72364d
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/cd6936f72b9f5d66f58c1b8ca40ff8ce
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/blobs/d48bb9642a9ade624f55dfa4e159df71
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/refs/0.11.1+ba20956e-l40sx1-bf16-throughput.1.1.0.17088220
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/refs/hf-8c22764-nim1.2
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
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/refs/0.11.1+14957bf8-l40sx1-fp16-throughput-lora-lora.1.1.2.17578501
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/refs/0.11.1+14957bf8-l40sx1-fp8-throughput.1.1.2.17547653
    ngc/hub/models--nim--mistralai--mistral-7b-instruct-v03/refs/hf-3990259-tool-calling
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/0.11.1+ba20956e-l40sx1-bf16-throughput.1.1.0.17088220/LICENSE.txt
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/0.11.1+ba20956e-l40sx1-bf16-throughput.1.1.0.17088220/NOTICE.txt
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/0.11.1+ba20956e-l40sx1-bf16-throughput.1.1.0.17088220/checksums.blake3
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/0.11.1+ba20956e-l40sx1-bf16-throughput.1.1.0.17088220/config.json
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/0.11.1+ba20956e-l40sx1-bf16-throughput.1.1.0.17088220/metadata.json
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/0.11.1+ba20956e-l40sx1-bf16-throughput.1.1.0.17088220/rank0.engine
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/LICENSE.txt
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/NOTICE.txt
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/checksums.blake3
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/config.json
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/generation_config.json
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/model-00001-of-00004.safetensors
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/model-00002-of-00004.safetensors
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/model-00003-of-00004.safetensors
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/model-00004-of-00004.safetensors
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/model.safetensors.index.json
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/special_tokens_map.json
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/tokenizer.json
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/tokenizer_config.json
    ngc/hub/models--nim--meta--llama-3_1-8b-instruct/snapshots/hf-8c22764-nim1.2/tool_use_config.json
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

# for file in $files; do
#     url="${URL}/$(echo ${file} | sed 's/\+/%2B/g')"

#     echo "downloading $url to ${TARGET}/${file}"

#     aria2c -x 16 -s 16 --allow-overwrite=true -c "${url}" --dir "${TARGET}"  --out "$file" --console-log-level=error
# done

# echo "$files" | xargs -P32 -I {} bash -c './aria2c -x 16 -s 16 --allow-overwrite=true -c "$(echo "${URL}/{}" | sed 's/\+/%2B/g')" --dir "${TARGET}"  --out "{}" --console-log-level=error'

echo "$files" | xargs -P32 -I {} bash -c "./aria2c -x 16 -s 16 --allow-overwrite=true -c \"\$(echo '${URL}/{}' | sed 's/\+/%2B/g')\" --dir \"${TARGET}\"  --out \"{}\" --console-log-level=error"