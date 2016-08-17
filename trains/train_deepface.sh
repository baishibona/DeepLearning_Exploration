#!/usr/bin/env sh

./build/tools/caffe train \
    --solver=DeepLearning_Exploration/models/DeepFace/solver.prototxt > DeepFaceTrainLog.txt