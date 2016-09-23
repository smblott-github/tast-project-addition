# This is the Cakefile for this test project.

targets  = Add.class
targets += add

build: $(targets)
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
	@# Python 2
	python add-python2.py 1 2 3 | grep -q -w 6
	python add-python2.py 1 2 3 -1 -2 -3 | grep -q -w 0
	@# Python 3
	python3 add-python3.py 1 2 3 | grep -q -w 6
	python3 add-python3.py 1 2 3 -1 -2 -3 | grep -q -w 0
	@# C
	./add 1 2 3 | grep -q -w 6
	./add 1 2 3 -1 -2 -3 | grep -q -w 0

clean:
	rm -fv $(targets)

docker-test:
	gitlab-runner exec docker test

.PHONY: build test clean docker-test
