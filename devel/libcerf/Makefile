# $NetBSD: Makefile,v 1.8 2019/01/18 09:30:05 adam Exp $

DISTNAME=	libcerf-1.11
CATEGORIES=	devel math
MASTER_SITES=	http://apps.jcns.fz-juelich.de/src/libcerf/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://apps.jcns.fz-juelich.de/doku/sc/libcerf
COMMENT=	Library providing efficient and accurate complex error functions
LICENSE=	mit

USE_CMAKE=		yes
USE_LANGUAGES=		c99
USE_TOOLS+=		pod2man
CMAKE_ARG_PATH=		${WRKSRC}
CONFIGURE_DIRS=		${WRKDIR}/build
PKGCONFIG_OVERRIDE=	libcerf.pc.in
TEST_TARGET=		test

post-extract:
	${MKDIR} ${WRKDIR}/build

.include "../../mk/bsd.pkg.mk"
