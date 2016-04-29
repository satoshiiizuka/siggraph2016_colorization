#!/bin/sh
echo "Downloading the colorization model..."
wget --continue -O colornet.t7 -- "http://hi.cs.waseda.ac.jp/~iizuka/data/colornet.t7"
