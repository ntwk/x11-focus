NAME = xfocus
CC = gcc
CFLAGS = -Wall -Wpedantic `pkg-config --cflags glib-2.0` -fno-strict-aliasing
LDLIBS = -lX11 `pkg-config --libs glib-2.0`

release: CFLAGS += -O2 -s
release: $(NAME)

debug: CFLAGS += -g
debug: $(NAME)

$(NAME):

.PHONY: clean
clean:
	-rm -f $(NAME) *.o

.PHONY: install
install:
	install -D $(NAME) $(HOME)/bin/$(NAME)
