# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

EGIT_REPO_URI="git://git.gnome.org/valadoc"

inherit git autotools

DESCRIPTION="Valadoc is a documentation generator for generating API documentation from Vala source code based on libvala"
HOMEPAGE="http://live.gnome.org/Valadoc"
SRC_URI=""

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/vala
	dev-libs/libgee"
RDEPEND="${DEPEND}"

src_compile() {
	./autogen.sh || die
	econf || die
	emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS ChangeLog COPYING MAINTAINERS NEWS README THANKS
}
