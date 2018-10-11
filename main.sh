# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

DIR="$HOME/workspace/datasets/ILSVRC2012/train"
ARCH="alexnet"
LR=0.05
WD=-5
K=10000
WORKERS=12
EXP="results/${ARCH}_lr${LR}_wd${WD}_k${K}_sobel"
PYTHON="python"

mkdir -p ${EXP}

${PYTHON} main.py ${DIR} --exp ${EXP} --arch ${ARCH} \
  --lr ${LR} --wd ${WD} --k ${K} --sobel --verbose --workers ${WORKERS}
