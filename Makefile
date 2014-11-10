CC=gcc
CFLAGS=-Wall -Werror
LDFLAGS=-lncursesw
PRG=snb
DEPS=src/data.o src/ui.o src/colors.o
TESTS=check_data
VERSION=$$(git describe --tags --always --dirty --match "[0-9A-Z]*.[0-9A-Z]*")

.PHONY: all clean debug check

all: version bin/$(PRG)

version:
	@echo "#define VERSION L\"$(VERSION)\"" > src/version.h

clean:
	rm -f src/*.o bin/$(PRG) tests/$(TESTS)

debug: CFLAGS+=-DDEBUG -g
debug: clean all

check: tests/$(TESTS)
	@./tests/$(TESTS)

tests/$(TESTS): $(DEPS)
	$(CC) $(CFLAGS) $(LDFLAGS) -lcheck -o $@ tests/$(TESTS).c $(DEPS)

bin/$(PRG): $(DEPS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ src/$(PRG).c $(DEPS)

%.o: %.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c $< -o $@
