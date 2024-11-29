#!/bin/sh

URL="https://dipper-cache-cn-shanghai.oss-cn-shanghai-internal.aliyuncs.com/nimcache"
TARGET="/mnt/auto"

files="
    fastpitch-hifigan-riva_ven-us_l40x1_24.06/tts-FastPitch_44k_EnglishUS_IPA.tar.gz
    parakeet-ctc-riva-1-1b_ven-us-ofl_l40x1_24.06/asr_parakeet_1.1b_en-US_offline_flashlight.tar.gz
    parakeet-ctc-riva-1-1b_ven-us-str_l40x1_24.06/asr_parakeet_1.1b_en-US_streaming_flashlight.tar.gz
    punctuation-riva_ven-us_l40x1_24.06/nlp_punctuation-en-US.tar.gz
    parakeet-ctc-riva-1-1b_ven-us-str-thr_l40x1_24.06/asr_parakeet_1.1b_en-US_streaming_throughput_flashlight.tar.gz
"

# 提前创建文件夹，避免由于并发创文件夹导致报错
echo "$files" | xargs -I {} dirname {} | xargs -I {} mkdir -p "${TARGET}/{}"

echo "$files" | xargs -P32 -I {} ./aria2c -x 16 -s 16 --allow-overwrite=true -c "${URL}/{}" --dir "${TARGET}"  --out "{}" --console-log-level=error