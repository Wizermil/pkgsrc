# $NetBSD: Makefile,v 1.1 2018/06/17 16:33:35 minskim Exp $

DISTNAME=	fluent-bit-0.13.2
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=fluent/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://fluentbit.io/
COMMENT=	Fast and lightweight log processor and forwarder
LICENSE=	apache-2.0

USE_CMAKE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	pkg-config

CMAKE_ARGS+=	-DCMAKE_INSTALL_SYSCONFDIR=${PKG_SYSCONFDIR}
CMAKE_ARGS+=	-DEGDIR:PATH=${EGDIR}

EGDIR=		${PREFIX}/share/examples/${PKGBASE}
CONF_FILES=	${EGDIR}/fluent-bit.conf \
		${PKG_SYSCONFDIR}/${PKGBASE}/fluent-bit.conf
CONF_FILES+=	${EGDIR}/parsers.conf \
		${PKG_SYSCONFDIR}/${PKGBASE}/parsers.conf

BUILDLINK_TRANSFORM+=	l:msgpackc-static:msgpackc

INSTALLATION_DIRS+=	include/monkey include/jsmn

.include "../../devel/msgpack/buildlink3.mk"

post-install:
	${INSTALL_DATA} ${WRKSRC}/lib/monkey/include/monkey/mk_core.h \
		${DESTDIR}${PREFIX}/include/monkey/
	${INSTALL_DATA} ${WRKSRC}/lib/jsmn/jsmn.h ${DESTDIR}${PREFIX}/include/

.include "../../mk/bsd.pkg.mk"
