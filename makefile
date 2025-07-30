CC = gcc
CFLAGS = -Wall -std=gnu89 -I/usr/include -I.
LFLAGS = -lm
OBJLIST = readPDBrecs.o geom3d.o utility.o select.o atomprops.o stdconntable.o abin.o

.c.o:
	$(CC) -c $*.c $(CFLAGS)

bndlst: bndlst.o $(OBJLIST)
	$(CC) -o $@ bndlst.o $(OBJLIST) $(LFLAGS)

clean:
	rm -f *.o bndlst
