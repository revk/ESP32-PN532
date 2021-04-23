all: pn532test

pn532test: pn532test.c
	cc -Wall -Wextra -O -o pn532test pn532test.c -I. -lpopt
