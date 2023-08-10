PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

CC = cc

PROG = sample

all: $(PROG)

clean:
	rm -f $(PROG)

install: $(PROG)
	mkdir -p $(BINDIR)
	cp -f $(PROG) $(BINDIR)

uninstall:
	rm -f $(BINDIR)/$(PROG)

.SUFFIXES: .c
.c:
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -o $@ $< $(LDLIBS)
