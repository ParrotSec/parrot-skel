INSTALL=install -m 0644


all:

clean:

install:
	chmod 750 -R parrot-skel/*
	chmod 644 parrot-skel/usr/lib/parrot-skel/skel/Desktop/README.license
	chown root:root -R parrot-skel
	cp -r parrot-skel/* $(DESTDIR)/
