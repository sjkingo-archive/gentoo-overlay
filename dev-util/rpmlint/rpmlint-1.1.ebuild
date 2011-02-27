# Copyright 1999-2011 Dan Callaghan <djc@djc.id.au>
# Distributed under the terms of the GNU General Public License v2

EAPI=3
PYTHON_DEPEND="2:2.4"

inherit eutils python bash-completion

DESCRIPTION="a tool for checking common errors in rpm packages"
HOMEPAGE="http://rpmlint.zarb.org/"
SRC_URI="http://rpmlint.zarb.org/download/${P}.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	>=app-arch/rpm-4.4[python]
	app-arch/xz-utils
	"
RDEPEND="${DEPEND}
	sys-devel/binutils
	app-arch/cpio
	app-arch/gzip
	app-arch/bzip2
	sys-apps/file[python]
	dev-util/desktop-file-utils
	dev-python/pyenchant
	"

src_prepare() {
	epatch "${FILESDIR}/${P}-dont-install.patch"
}

src_compile() {
	:
}

src_test() {
	emake check
}

src_install() {
	emake -j1 DESTDIR="${D}" install
	dobashcompletion rpmlint.bash-completion
}

pkg_postinst() {
	python_mod_optimize /usr/share/rpmlint
	bash-completion_pkg_postinst
}

pkg_postrm() {
	python_mod_cleanup /usr/share/rpmlint
}
