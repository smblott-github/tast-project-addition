
build: Add.class
build: add
	@true

%.class: %.java
	javac $<

%: %.c
	gcc -o $@ $<

test:
	$(MAKE) build
	@# Java
	java Add 1 2 3 | grep -q -w 6
	java Add 1 2 3 -1 -2 -3 | grep -q -w 0
	@# Python
	python add.py 1 2 3 | grep -q -w 6
	python add.py 1 2 3 -1 -2 -3 | grep -q -w 0
	@# C
	./add 1 2 3 | grep -q -w 6
	./add 1 2 3 -1 -2 -3 | grep -q -w 0

.PHONY: build test
