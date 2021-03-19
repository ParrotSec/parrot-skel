INSTALL=install -m 0644


all:

clean:

install:
	mkdir -p root/.config/dconf || true
	mkdir -p skel/.config/dconf || true
	dconf compile root/.config/dconf/user dconf/db/local.d/
	dconf compile skel/.config/dconf/user dconf/db/local.d/
	mkdir -p $(DESTDIR)/usr/lib/parrot-skel/etc
	mkdir -p $(DESTDIR)/usr/bin
	chmod 755 update-skel
	chown root:root -R skel root dconf update-skel
	cp -r dconf $(DESTDIR)/usr/lib/parrot-skel/etc/
	cp -r root $(DESTDIR)/
	cp -r skel $(DESTDIR)/usr/lib/parrot-skel/etc/
	cp -r update-skel $(DESTDIR)/usr/bin
