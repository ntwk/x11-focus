NAME = xfocus
CC = gcc
CFLAGS = -Wall -Wpedantic `pkg-config --cflags glib-2.0` -O2 -fno-strict-aliasing -s
LDLIBS = -lX11 `pkg-config --libs glib-2.0`

$(NAME):

.PHONY: clean
clean:
	-rm -f $(NAME) *.o

.PHONY: install
install:
	install -D $(NAME) $(HOME)/bin/$(NAME)
