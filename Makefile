
targets  = Add.class
targets += add

build: $(targets)
	@true

%.class: %.java
	javac $<

%: %.c
	gcc -o $@ $<

test:
	# Output the test context (for reference only).
	pwd
	ls -l
	which perl
	# Build C and Java targets.
	$(MAKE) build
	# NOTE(smblott)  This is not a recommended test framework.  It's just a
	# quick-and-dirty hack.
	# Java
	java Add 1 2 3 | grep -q -w 6
	java Add 1 2 3 | wc -l | grep -q -w 1
	# Python 2
	python add-python2.py 1 2 3 | grep -q -w 6
	python add-python2.py 1 2 3 | wc -l | grep -q -w 1
	# Python 3
	python3 add-python3.py 1 2 3 | grep -q -w 6
	python add-python2.py 1 2 3 | wc -l | grep -q -w 1
	# C
	./add 1 2 3 | grep -q -w 6
	python add-python2.py 1 2 3 | wc -l | grep -q -w 1

clean:
	rm -fv $(targets)

docker-test:
	gitlab-runner exec docker test

.PHONY: build test clean docker-test
