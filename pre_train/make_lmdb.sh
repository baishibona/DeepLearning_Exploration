EXAMPLE=data/exploration
DATA=data/exploration/Raw_img
TOOLS=build/tools

TRAIN_DATA_ROOT=data/exploration/Raw_img/train_img_win256
VAL_DATA_ROOT=data/exploration/Raw_img/test_img_win256

RESIZE=false
if $RESIZE; then
  RESIZE_HEIGHT=256
  RESIZE_WIDTH=256
else
  RESIZE_HEIGHT=0
  RESIZE_WIDTH=0
fi

echo "Creating train lmdb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
    --resize_height=$RESIZE_HEIGHT \
    --resize_width=$RESIZE_WIDTH \
    --shuffle \
    --gray \
    $TRAIN_DATA_ROOT/ \
    $DATA/train_img_win256.txt \
    $EXAMPLE/explo_train_lmdb


echo "Creating val lmdb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
    --resize_height=$RESIZE_HEIGHT \
    --resize_width=$RESIZE_WIDTH \
    --shuffle \
    --gray \
    $VAL_DATA_ROOT/ \
    $DATA/test_img_win256.txt \
    $EXAMPLE/explo_val_lmdb

echo "Done."