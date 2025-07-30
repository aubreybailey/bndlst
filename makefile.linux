RUN echo 'CC = gcc' > makefile && \
    echo 'CFLAGS = -Wall -std=gnu89 -I/usr/include -I.' >> makefile && \
    echo 'LFLAGS = -lm' >> makefile && \
    echo 'OBJLIST = readPDBrecs.o geom3d.o utility.o select.o \\' >> makefile && \
    echo '         atomprops.o stdconntable.o abin.o' >> makefile && \
    echo '' >> makefile && \
    echo '.c.o:' >> makefile && \
    echo -e '\t$(CC) -c $*.c $(CFLAGS)' >> makefile && \
    echo '' >> makefile && \
    echo 'bndlst: bndlst.o $(OBJLIST)' >> makefile && \
    echo -e '\t$(CC) -o $@ bndlst.o $(OBJLIST) $(LFLAGS)' >> makefile && \
    echo '' >> makefile && \
    echo 'clean:' >> makefile && \
    echo -e '\trm -f *.o bndlst' >> makefile && \
    make && chmod +x bndlst