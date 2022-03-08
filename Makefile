prefix ?= /usr

.PHONY: install

install:
	install -m 755 -o root -g root -D etc/profile.d/* $(DESTDIR)$(prefix)/etc/profile.d

	install -m 755 -o root -g root -D etc/sudoers.d/* $(DESTDIR)/etc/sudoers.d