all:
	mkdir download && cd download && wget http://www.hboehm.info/gc/gc_source/gc-7.6.4.tar.gz
	tar zxvf download/gc-7.6.4.tar.gz
	cd gc-7.6.4 && git clone git://github.com/ivmai/libatomic_ops.git \
	&& ./configure --enable-handle-fork \
	&& make

install:
	cd gc-7.6.4 && make install

clean:
	rm -rf download gc-7.6.4
