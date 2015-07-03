PREFIX ?= /usr/local

install:
	bin/check
	docker pull balabhadra/codeclimate:latest
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 codeclimate-wrapper $(DESTDIR)$(PREFIX)/bin/codeclimate

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/codeclimate
	docker rmi balabhadra/codeclimate:latest

.PHONY: install uninstall
