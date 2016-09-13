
build: Add.class
	@true

%.class: %.java
	javac $<

test:
	$(MAKE) build
	@#
	java Add 1 2 3 | grep -q -w 6
	java Add 1 2 3 -1 -2 -3 | grep -q -w 0
	@#
	python add.py 1 2 3 | grep -q -w 6
	python add.py 1 2 3 -1 -2 -3 | grep -q -w 0

.PHONY: build test
