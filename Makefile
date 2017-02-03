INSTALL=install -m 0644


all:

clean:

install:
	dconf compile dconf/db/local.d/parrot-skel skel/.conf/dconf/user
	dconf compile dconf/db/local.d/parrot-skel root/.conf/dconf/user
	mkdir -p /usr/lib/parrot-skel/etc
	mkdir -p /usr/bin
	chmod 750 -R skel root
	chmod 754 dconf
	chmod 755 update-skel
	chown root:root -R skel root dconf update-skel
	cp -r dconf $(DESTDIR)/usr/lib/parrot-skel/etc/
	cp -r root $(DESTDIR)/
	cp -r skel $(DESTDIR)/usr/lib/parrot-skel/etc/
	cp -r update-skel $(DESTDIR)/usr/bin
