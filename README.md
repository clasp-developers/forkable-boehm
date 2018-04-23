# forkable-boehm

This builds a forkable version of the Boehm GC for clasp (https://github.com/clasp-developers/clasp.git).  
This version of the Boehm GC allows clasp to build its Common Lisp code multiple cores.

Usage:

```
make
sudo make install
```

Then go into the clasp top level directory and type:

```
echo "USE_PARALLEL_BUILD = True" >> wscript.config
```

Then build clasp using:

```
make clean
make configure
make
```
