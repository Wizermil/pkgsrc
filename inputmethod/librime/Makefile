# $NetBSD: Makefile,v 1.17 2018/12/13 19:51:35 adam Exp $

DISTNAME=	librime-1.0
PKGREVISION=	12
CATEGORIES=	inputmethod chinese
MASTER_SITES=	http://rimeime.googlecode.com/files/
#MASTER_SITES=	http://dl.bintray.com/lotem/rime/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://rime.im/
COMMENT=	Rime input method engine
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR}/librime
USE_CMAKE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	rime.pc.in

.include "options.mk"

.include "../../converters/opencc/buildlink3.mk"
.include "../../databases/kyotocabinet/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/google-glog/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../textproc/yaml-cpp/buildlink3.mk"
.include "../../x11/xorgproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
