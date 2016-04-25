[Automatic Colorization for Grayscale Images](http://hi.cs.waseda.ac.jp/~iizuka/projects/colorization/)
=======================


Overview
--------

This code provides an implementation of the research paper:

```
  "Let there be Color!: Joint End-to-end Learning of Global and Local Image Priors for Automatic Image Colorization with Simultaneous Classification"
  Satoshi Iizuka, Edgar Simo-Serra, and Hiroshi Ishikawa
  ACM Transaction on Graphics (Proc. of SIGGRAPH 2016), 2016
```

See our [project page](http://hi.cs.waseda.ac.jp/~iizuka/projects/colorization/) for more detailed information.


License
-------

```
  Copyright (C) <2016> <Satoshi Iizuka, Edgar Simo-Serra, Hiroshi Ishikawa>

  This work is licensed under the Creative Commons
  Attribution-NonCommercial-ShareAlike 4.0 International License. To view a copy
  of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/ or
  send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

  Satoshi Iizuka, Waseda University
  iizuka@aoni.waseda.jp, http://hi.cs.waseda.ac.jp/~iizuka/index_eng.html
  Edgar Simo-Serra, Waseda University
  esimo@aoni.waseda.jp, http://hi.cs.waseda.ac.jp/~esimo/  
```


Dependencies
------------

- [Torch7](http://torch.ch/docs/getting-started.html)
- [nn](https://github.com/torch/nn)
- [image](https://github.com/torch/image)
- [nngraph](https://github.com/torch/nngraph)

Each package can be installed via Luarocks:

```
luarocks install nn
luarocks install image
luarocks install nngraph
```


Usage
-----

First, download the colorization model by running the download script:

```
sh download_model.sh
```

Basic usage is:

```
th colorize.lua <input_image> [<output_image>]
```

For example:

```
th colorize.lua ansel_colorado_1941.png out.png
```


This is developed on a linux machine running Ubuntu 14.04 during late 2015. If you use this code please cite:

```
 @Article{IizukaSIGGRAPH2016,
   author = {Satoshi Iizuka and Edgar Simo-Serra and Hiroshi Ishikawa},
   title = {{Let there be Color!: Joint End-to-end Learning of Global and Local Image Priors for Automatic Image Colorization with Simultaneous Classification}},
   journal = "ACM Transactions on Graphics (Proc. of SIGGRAPH 2016)",
   year = 2016,
   volume = 35,
   number = 4,
 }
```




