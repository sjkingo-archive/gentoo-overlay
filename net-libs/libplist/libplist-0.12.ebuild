# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-text/libwpd/libwpd-0.8.9.ebuild,v 1.12 2008/08/25 09:51:16 remi Exp $

inherit eutils

DESCRIPTION="A library to handle Apple Property List format whereas it's binary
or XML"
HOMEPAGE="http://github.com/JonathanBeck/libplist/tree/master"
SRC_URI="http://cloud.github.com/downloads/JonathanBeck/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-util/pkgconfig"

src_compile() {
	mkdir build || die
	cd build || die
	cmake .. || die
	emake || die
}

src_install() {
	cd build/src || die
	make install || die
}
