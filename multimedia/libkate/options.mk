# $NetBSD: options.mk,v 1.8 2018/07/03 05:03:25 adam Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.libkate
PKG_SUPPORTED_OPTIONS=	debug doc oggz python valgrind vorbis
PKG_SUGGESTED_OPTIONS+=	oggz vorbis
PLIST_VARS+=		doc python

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--enable-debug
.endif

.if !empty(PKG_OPTIONS:Mdoc)
PLIST.doc=		yes
.else
CONFIGURE_ARGS+=	--disable-doc
.endif

.if !empty(PKG_OPTIONS:Moggz)
.include "../../multimedia/liboggz/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mpython)
REPLACE_PYTHON=		tools/KateDJ/KateDJ
PY_PATCHPLIST=		yes
PYTHON_VERSIONS_INCOMPATIBLE=	34 35 36 37 # py-wxWidgets
.include "../../x11/py-wxWidgets/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
PLIST.python=		yes
.else
CONFIGURE_ENV+=		PYTHON=":"
.endif

.if !empty(PKG_OPTIONS:Mvalgrind)
BUILD_DEPENDS+=	valgrind-[0-9]*:../../devel/valgrind
.endif

.if !empty(PKG_OPTIONS:Mvorbis)
BUILD_DEPENDS+=	vorbis-tools-[0-9]*:../../audio/vorbis-tools
.endif
