CPPFLAGS=-std=c++17

build: nix-find-roots

install: nix-find-roots
	mkdir -p $(PREFIX)/bin
	cp nix-find-roots $(PREFIX)/bin/

