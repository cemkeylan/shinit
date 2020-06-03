PREFIX = /usr/local
BINDIR = ${PREFIX}/bin

install:
	mkdir -p ${DESTDIR}${BINDIR}
	cp shinit poweroff ${DESTDIR}${BINDIR}
	chmod 755 ${DESTDIR}${BINDIR}/shinit
	chmod 755 ${DESTDIR}${BINDIR}/poweroff
	ln -sf poweroff ${DESTDIR}${BINDIR}/reboot

uninstall:
	rm -f ${DESTDIR}${BINDIR}/shinit \
		${DESTDIR}${BINDIR}/poweroff \
		${DESTDIR}${BINDIR}/reboot
