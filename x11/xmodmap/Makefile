# $NetBSD: Makefile,v 1.9 2019/02/21 09:44:50 wiz Exp $

DISTNAME=		xmodmap-1.0.10
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_XORG:=app/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		X modmap program

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config

.include "../../x11/libX11/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
