# $NetBSD: Makefile,v 1.30 2018/07/04 13:40:09 jperkin Exp $

DISTNAME=	moss-0.1.13
PKGREVISION=	6
CATEGORIES=	audio
MASTER_SITES=	http://kldp.net/frs/download.php/1580/

MAINTAINER=	myunggoni@users.kldp.net
HOMEPAGE=	http://moss.kldp.net/
COMMENT=	MP3/OGG Streaming Server
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-ogg>=1.3:../../audio/py-ogg
DEPENDS+=	${PYPKGPREFIX}-vorbis>=1.3:../../audio/py-vorbis

PYTHON_VERSIONS_INCOMPATIBLE=	34 35 36 37 # py-ogg, py-vorbis

REPLACE_PYTHON=	${WRKSRC}/*.py

RCD_SCRIPTS=	moss
CONF_FILES=	${PREFIX}/share/moss/moss.conf.sample	\
		${PKG_SYSCONFDIR}/moss.conf

SUBST_CLASSES+=		path
SUBST_MESSAGE.path=	Fixing hardcoded paths.
SUBST_STAGE.path=	pre-configure
SUBST_FILES.path=	moss.conf.sample
SUBST_SED.path=		-e 's,$${PREFIX}/var,${VARBASE},g'
SUBST_SED.path+=	-e 's,$${PREFIX}/share,${PREFIX}/share,g'

FILES_SUBST+=	INTERPRETER=${PYTHONBIN:Q}

PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
