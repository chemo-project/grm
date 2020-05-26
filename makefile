# grm - Git Repository Manager
# See LICENSE file for copyright and license details.

include config.mk

all: grm grm.1

grm.1: grm.mk
	md2roff grm.mk > grm.1

install: all
	@echo installing script to ${DESTDIR}${PREFIX}/bin
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f grm ${DESTDIR}${PREFIX}/bin
	@chmod 755 ${DESTDIR}${PREFIX}/bin/slmenu
	@echo installing manual pages to ${DESTDIR}${MANPREFIX}/man1
	@mkdir -p ${DESTDIR}${MANPREFIX}/man1
	@sed "s/VERSION/${VERSION}/g" < grm.1 > ${DESTDIR}${MANPREFIX}/man1/grm.1
	@chmod 644 ${DESTDIR}${MANPREFIX}/man1/grm.1

uninstall:
	@echo removing executables from ${DESTDIR}${PREFIX}/bin
	@rm -f ${DESTDIR}${PREFIX}/bin/grm
	@echo removing manual page from ${DESTDIR}${MANPREFIX}/man1
	@rm -f ${DESTDIR}${MANPREFIX}/man1/grm.1
