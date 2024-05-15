#!/bin/sh

# Must be changed depending on your video card
export HSA_OVERRIDE_GFX_VERSION=11.0.0 

export HIP_VISIBLE_DEVICES=0
export PYTORCH_HIP_ALLOC_CONF=garbage_collection_threshold:0.7,max_split_size_m>

# Launch Stable Diffusion
python launch.py --no-half --precision full
