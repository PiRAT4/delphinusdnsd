COMMENT =           Non-caching, non-recursing authorative DNS server
DISTNAME =		      delphinusdnsd-${VERSION}
VERSION =           1.4.1
PKGNAME =           ${DISTNAME}
CATEGORIES =	      net

HOMEPAGE =          https://delphinusdns.org/
MAINTAINER =	      Ricardo Santos <eu@pirata.sh>

# BSD
PERMIT_PACKAGE =    Yes
#uses pledge()

MASTER_SITES =	    https://delphinusdns.org/download/

WANTLIB +=          c ssl crypto db
CFLAGS= 	          -Wall -g
LDFLAGS= 	          -Wall -g
LDADD= 		          -lcrypto -lssl -lutil

CONFIGURE_STYLE =	  simple
CONFIGURE_ARGS =	  --user=_ddd \
                    --location=/var/delphinusdnsd

.include <bsd.port.mk>
