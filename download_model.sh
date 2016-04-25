#!/bin/sh
if [[ ! -f 'colornet.t7' ]]; then
   echo "Downloading the colorization model..."
   wget "http://hi.cs.waseda.ac.jp/~iizuka/data/colornet.t7"
else
   echo "Model file already exists!"
fi
