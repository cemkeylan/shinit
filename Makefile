PREFIX = /usr/local
BINDIR = ${PREFIX}/bin

install:
	install -Dm755 -t ${DESTDIR}${BINDIR} shinit

uninstall:
	rm -f ${DESTDIR}${BINDIR}/shinit
