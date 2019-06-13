PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

install:
	@echo Installing the executable to $(BINDIR)
	@mkdir -p $(BINDIR)
	@install -m 755 fern $(BINDIR)

uninstall:
	@echo Removing the executable from $(BINDIR)
	@rm -f $(BINDIR)/fern

.PHONY: install uninstall

