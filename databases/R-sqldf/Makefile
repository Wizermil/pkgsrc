# $NetBSD: Makefile,v 1.2 2018/07/28 14:40:42 brook Exp $

CATEGORIES=	databases

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	${R_HOMEPAGE_BASE}/sqldf/
COMMENT=	R package for running SQL statements on R data frames
LICENSE=	gnu-gpl-v2

R_PKGNAME=	sqldf
R_PKGVER=	0.4-10

DEPENDS+=	R-DBI>=0.2.5:../../math/R-DBI
DEPENDS+=	R-RSQLite>=1.0.0:../../databases/R-RSQLite
DEPENDS+=	R-chron>=2.3.42:../../math/R-chron
DEPENDS+=	R-gsubfn>=0.6:../../textproc/R-gsubfn
DEPENDS+=	R-proto>=0.3.9.2.6:../../devel/R-proto

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
