#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

EXAMPLE=data/exploration
DATA=data/exploration
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/explo_train_lmdb \
  $DATA/explo_mean.binaryproto

echo "Done."
