
CFLAGS= -Wall -Wextra -O3 -std=c99


default: all

all: trie.a

trie.o: trie.c trie.h
	$(CC) $(CFLAGS) -c -o $@ $<

trie.a: trie.o
	$(AR) rcs $@ $^

example: trie.c example.c
	$(CC) -Wall -ansi -std=c99 -O3 -o example trie.c example.c

clean:
	rm -f ./example

run: example
	./example

