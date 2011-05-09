# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

PYTHON_DEPEND="2:2.5"

EAPI=3
inherit distutils eutils

DESCRIPTION="A full-featured, pure-Python tiling window manager."
HOMEPAGE="http://www.qtile.org/"
SRC_URI="http://www.qtile.org/download/${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~sparc ~x86"

DEPEND="dev-python/setuptools"
RDEPEND="${DEPEND} >=dev-python/python-xlib-0.14"

src_install() {
	distutils_src_install
}
