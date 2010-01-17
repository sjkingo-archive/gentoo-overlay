# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit base eutils

DESCRIPTION="ESP Package Manager, for generating platform packages"
HOMEPAGE="http://www.epmhome.org/"
SRC_URI="http://ftp.easysw.com/pub/epm/${PV}/${P}-source.tar.bz2"
LICENSE="GPL"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="app-arch/rpm"
DEPEND=""

DOCS="ANNOUNCEMENT CHANGES COPYING INSTALL README TODO"

src_unpack() {
	unpack "${P}-source.tar.bz2"
	cd "${S}"
	epatch "${FILESDIR}/${PN}-4.1-destdir.patch"
}
