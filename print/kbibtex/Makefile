# $NetBSD: Makefile,v 1.93 2018/12/13 19:52:19 adam Exp $

DISTNAME=		kbibtex-0.5.1
PKGREVISION=		26
CATEGORIES=		print kde
#MASTER_SITES=		http://download.gna.org/kbibtex/0.5/
EXTRACT_SUFX=		.tar.xz

MAINTAINER=		markd@NetBSD.org
HOMEPAGE=		https://userbase.kde.org/KBibTeX
COMMENT=		BibTeX editor for KDE
LICENSE=		gnu-gpl-v2

BUILD_DEPENDS+=	automoc4>=0.9.87:../../devel/automoc4

BROKEN=			Needs poppler with qt4 support.

USE_TOOLS+=		perl msgfmt
USE_LANGUAGES=		c c++

.include "../../meta-pkgs/kde4/kde4.mk"
#.include "../../print/poppler-qt4/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
