#!/bin/sh

# md5sum c88fa2bb6dc9f942a492a7dc7009b966
# sha1sum d397faf0b63a173680824474bfeab4725c375ca2

echo "Downloading the colorization model..."
wget --continue -O colornet.t7 -- "http://hi.cs.waseda.ac.jp/~iizuka/data/colornet.t7"
