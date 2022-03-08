.PHONY: install

install:
	install -m 644 -o root -g root -D etc/profile.d/* $(DESTDIR)/etc/profile.d/
	install -m 644 -o root -g root -D etc/sudoers.d/* $(DESTDIR)/etc/sudoers.d/