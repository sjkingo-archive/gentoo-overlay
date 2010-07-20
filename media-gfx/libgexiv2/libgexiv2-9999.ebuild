
inherit mercurial eutils

DESCRIPTION="GObject wrapper for exiv2, with Vala bindings"
HOMEPAGE="http://trac.yorba.org/wiki/gexiv2"
#SRC_URI="http://yorba.org/download/gexiv2/0.1/${P}.tar.bz2"
EHG_REPO_URI="http://code.djc.id.au/hg/gexiv2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=media-gfx/exiv2-0.19"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

# due to hg checkout:
S="${WORKDIR}/gexiv2"

src_compile() {
	econf || die
	emake || die
}

src_install() {
	make DESTDIR="${D}" install || die
}
