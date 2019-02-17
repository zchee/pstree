PREFIX=/usr/local

pstree: pstree.c
	gcc -o pstree pstree.c

pstree-dbg: pstree.c
	gcc -o pstree-dbg pstree.c -DDEBUG

install: pstree
	mkdir -p ${PREFIX}/bin ${PREFIX}/share/man/man1
	install -c pstree ${PREFIX}/bin
	install -c -m 644 ./pstree.1 ${PREFIX}/share/man/man1/pstree.1
