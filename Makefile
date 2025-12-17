CONTENTS := src/main.kn

all: build run
build: pike
pike: $(wildcard src/*.kn)
	@kuinc_x -t src/main.kn -o pike.cpp
	@g++ pike.cpp -o pike -lcurses
	@rm pike.cpp
run: pike
	@./pike $(CONTENTS)
clean:
	@rm pike pike.cpp

.PHONY: all build run clean
