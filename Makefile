include buildconf.mk

all: syndicate

syndicate: amd

.PHONY: amd
amd:
	$(MAKE) -C automount

.PHONY: install
install:
	$(MAKE) -C automount install

.PHONY: uninstall
uninstall:
	$(MAKE) -C automount uninstall

.PHONY: clean
clean:
	$(MAKE) -C automount clean

