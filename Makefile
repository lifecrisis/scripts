# Default target.  Stops you from doing a clean install by mistake!
.PHONY: all
all:
	@echo 'Makefile: you must specify a target' >&2

# Install/re-install your scripts.  Remove the existing ~/bin/ directory first.
.PHONY: install
install: clean
	mkdir -pv ~/bin/local/
	cp -v bin/* ~/bin/
	@echo 'Install complete!'

# Update the scripts in the ~/bin/ directory and add new ones!
.PHONY: update
update:
	cp -uv bin/* ~/bin/
	@echo 'Update complete!'

.PHONY: clean
clean:
	rm -rfv ~/bin/
