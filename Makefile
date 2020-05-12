PREFIX = /usr/local
BINDIR = ${PREFIX}/bin

install:
	install -Dm755 shinit   ${DESTDIR}${BINDIR}/shinit
	install -Dm755 poweroff ${DESTDIR}${BINDIR}/poweroff
	ln -sf         poweroff ${DESTDIR}${BINDIR}/reboot

uninstall:
	rm -f ${DESTDIR}${BINDIR}/shinit \
		${DESTDIR}${BINDIR}/poweroff \
		${DESTDIR}${BINDIR}/reboot
