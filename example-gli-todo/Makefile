PREFIX ?= /usr/local
VERSION = "v0.0.1"

all: install

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 ruby-cli-app-wrapper $(DESTDIR)$(PREFIX)/bin/ruby-cli-app

uninstall:
	@$(RM) $(DESTDIR)$(PREFIX)/bin/ruby-cli-app
	@docker rmi atomicobject/ruby-cli-app:$(VERSION)
	@docker rmi atomicobject/ruby-cli-app:latest

build:
	@docker build -t atomicobject/ruby-cli-app:$(VERSION) . \
&& docker tag -f atomicobject/ruby-cli-app:$(VERSION) atomicobject/ruby-cli-app:latest

publish: build
	@docker push atomicobject/ruby-cli-app:$(VERSION) \
&& docker push atomicobject/ruby-cli-app:latest

.PHONY: all install uninstall build publish
