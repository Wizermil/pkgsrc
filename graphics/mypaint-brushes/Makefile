# $NetBSD: Makefile,v 1.4 2019/01/02 17:23:03 tnn Exp $

DISTNAME=	mypaint-brushes-1.3.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=Jehan/}
GITHUB_PROJECT=	mypaint-brushes
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/Jehan/mypaint-brushes/
COMMENT=	Default MyPaint brushes
LICENSE=	cc0-1.0-universal

USE_TOOLS+=	pkg-config
USE_LANGUAGES=	# none

PKGCONFIG_OVERRIDE+=	pkgconfig.pc.in

SCONS_ARGS+=	prefix=${DESTDIR}${PREFIX}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${SCONSBIN} \
		${SCONS_ARGS}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${SCONSBIN} \
		${SCONS_ARGS} install

PYTHON_FOR_BUILD_ONLY?=	yes
.include "../../devel/scons/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
