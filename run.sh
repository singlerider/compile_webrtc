#!/usr/bin/env bash

rm -rf out/* 
mkdir -p out/Debug

docker run -v $(pwd)/out:/out -it compile_webrtc
