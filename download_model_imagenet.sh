#!/bin/bash

# md5sum 09eddf45cd1b085fcb4cc880ba448072
# sha1sum 36b3f03dab74262552dd63ee16b4e1df842a680f

FILENAME="colornet_imagenet.t7"
FILEURL="http://hi.cs.waseda.ac.jp/~iizuka/data/colornet_imagenet.t7"
FILEMD5="09eddf45cd1b085fcb4cc880ba448072"

echo "Downloading the colorization model (665M)..."
wget --continue -O "$FILENAME" -- "$FILEURL"

echo "Checking integrity (md5sum)..."
OS=`uname -s`
if [ "$OS" = "Darwin" ]; then
  CHECKSUM=`cat $FILENAME | md5`
else
  CHECKSUM=`md5sum $FILENAME | awk '{ print $1 }'`
fi

if [ "$CHECKSUM" != "$FILEMD5" ]; then
  echo "Integrity check failed. File is corrupt!"
  echo "Try running this script again and if it fails remove '$FILENAME' before trying again."
  exit 1
fi 
echo -e "Download finished successfully! Time to \e[31mc\e[32mo\e[33m\e[34ml\e[35mo\e[36mr\e[37mi\e[91mz\e[92me\e[93m\e[94m!"
