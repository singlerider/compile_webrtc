#!/usr/bin/env bash

rm -rf out/* 
mkdir -p out/Debug
mkdir -p out/Release

docker run --platform=linux/amd64 -v $(pwd)/out:/out -it compile_webrtc
