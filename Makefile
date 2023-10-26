.PHONY: install

DESTDIR ?= /

install:
	install -d $(DESTDIR)etc/profile.d
	install -m 644 -o root -g root -D ./etc/profile.d/00-wsl2-systemd.sh $(DESTDIR)etc/profile.d/

	install -d $(DESTDIR)etc/sudoers.d
	install -m 644 -o root -g root -D ./etc/sudoers.d/99-preserve-wsl $(DESTDIR)etc/sudoers.d/

	install -d $(DESTDIR)etc/systemd/system/systemd-networkd-wait-online.service.d
	install -m 644 -o root -g root -D ./etc/systemd/system/systemd-networkd-wait-online.service.d/override.conf $(DESTDIR)etc/systemd/system/systemd-networkd-wait-online.service.d/

	install -d $(DESTDIR)usr/bin
	install -m 755 -o root -g root -D ./sbin/* $(DESTDIR)usr/bin
