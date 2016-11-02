
build: git.html

install:
	rsync -v git.html desktop:../www/smblott.org/git.html

%.html: %.slidy
	asciidoc --backend slidy $<

.PHONY: build install
