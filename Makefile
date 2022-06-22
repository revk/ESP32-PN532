makeloop: makeloop.c
	gcc -I/usr/local/include -L/usr/local/lib -O -o $@ $< -lpopt -lm -g

