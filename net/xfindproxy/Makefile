# $NetBSD: Makefile,v 1.5 2018/03/07 11:57:32 wiz Exp $

DISTNAME=	xfindproxy-1.0.4
PKGREVISION=	1
CATEGORIES=	net x11
MASTER_SITES=	${MASTER_SITE_XORG:=app/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://xorg.freedesktop.org/
COMMENT=	Used to locate available X11 proxy services
LICENSE=	x11

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config

.include "../../x11/xorgproto/buildlink3.mk"
.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../devel/xorg-util-macros/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
