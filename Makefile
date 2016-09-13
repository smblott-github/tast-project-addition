
build: Add.class
	@true

%.class: %.java
	javac $<

.PHONY: build
