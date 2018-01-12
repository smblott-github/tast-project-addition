# The is the project Makefile.

targets  = Add.class
targets += add

build: $(targets)
	@true

%.class: %.java
	javac $<

%: %.c
	mkdir -p build
	gcc -o build/$@ $<

test:
	# Build C and Java targets.
	$(MAKE) build
	for script in tests/*.sh; do sh $$script || exit 1; done

clean:
	rm -fv $(targets)

docker-test:
	gitlab-runner exec docker test

.PHONY: build test clean docker-test
