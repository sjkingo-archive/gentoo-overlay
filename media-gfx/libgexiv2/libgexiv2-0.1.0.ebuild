
inherit eutils

DESCRIPTION="GObject wrapper for exiv2, with Vala bindings"
HOMEPAGE="http://trac.yorba.org/wiki/gexiv2"
SRC_URI="http://yorba.org/download/gexiv2/0.1/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

# see bug #115992 for modular x deps
RDEPEND=">=media-gfx/exiv2-0.19"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_unpack() {
	unpack "$A"
	cd "$S"
	epatch "${FILESDIR}/libgexiv2-0.1.0-libtool-tag.patch"
}

src_compile() {
	econf || die
	emake || die
}

src_install() {
	make DESTDIR="${D}" install || die
}
