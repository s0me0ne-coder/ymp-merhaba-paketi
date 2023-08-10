build:
	${CC} main.c -o main
install:
	install main ${DESTDIR}/usr/bin/merhaba
