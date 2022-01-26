#!/bin/sh
python copy_libc++_shared.py
android/build_sdk.py output --no_samples_build --modules_list core,imgcodecs,imgproc,java
