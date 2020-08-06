COMMENT =           simple authorative DNS server
DISTNAME =          delphinusdnsd-${VERSION}
VERSION =           1.4.3
PKGNAME =           ${DISTNAME}
CATEGORIES =        net

HOMEPAGE =          https://delphinusdns.org/
MAINTAINER =        Ricardo Santos <risantos@pm.me>

# BSD
PERMIT_PACKAGE =    Yes
#uses pledge()

MASTER_SITES =      https://delphinusdns.org/download/

WANTLIB +=          c ssl crypto util
CFLAGS =            -Wall -g
LDFLAGS =           -Wall -g

CONFIGURE_STYLE =   simple
CONFIGURE_ARGS =    --user=_ddd \
                    --location=/var/delphinusdnsd

NO_TEST =           Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/delphinusdnsd
	${INSTALL_DATA} ${WRKDIST}/examples/Master/{example1.conf,example2.conf} \
		${PREFIX}/share/examples/delphinusdnsd

.include <bsd.port.mk>
