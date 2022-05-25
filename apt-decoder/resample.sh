#!/usr/bin/env bash

if [[ "$#" -ne 1 && "$#" -ne 2 ]]; then
    echo "Usage: resample.sh input.wav [ output.wav ]"
    echo "Resamples to 20800Hz. If output is ommited, by default will save on output.wav"
    exit 1
fi

echo "Resampling to 20800Hz..."
sox "$1" -r 20800 "${2:-output.wav}" highpass 10 lowpass 4500
