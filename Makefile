CC=gcc
CFLAGS=-Wall -g -std=gnu99 -flto
INCLUDES=-I/usr/include
LIBS=-lm
MOD=undname.o

all: undname

$(MOD): %.o: %.c 
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

ddsp16xx: $(MOD)
	$(CC) $(CFLAGS) $(LIBS) -o undname $(MOD)

clean:
	rm -f *o undname

rebuild: clean all

.PHONY: all clean rebuild