#!/usr/bin/env bash

rm -rf out/* 
mkdir -p out/Debug
mkdir -p out/Release

docker run -v $(pwd)/out:/out -it compile_webrtc
