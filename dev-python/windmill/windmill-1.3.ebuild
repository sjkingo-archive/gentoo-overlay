# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
PYTHON_MODNAME="windmill windmill2"

PYTHON_DEPEND="2:2.6"

inherit distutils eutils

DESCRIPTION="Web testing framework intended for complete automation of user interface testing"
HOMEPAGE="http://www.getwindmill.com/"
SRC_URI="http://pypi.python.org/packages/source/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ssl"

DEPEND=""
RDEPEND="
    dev-python/setuptools
    ssl? ( dev-python/pyopenssl )
    "

src_prepare() {
	distutils_src_prepare
	epatch "${FILESDIR}/${PN}-1.3-disable-ubuntu-hax.patch"
}
