# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
inherit distutils eutils

PYTHON_DEPEND="2:2.6"

DESCRIPTION="Python implementation of the Munkres Algorithm, for solving the Assignment Problem"
HOMEPAGE="http://pypi.python.org/pypi/munkres/1.0.5.4"
SRC_URI="http://pypi.python.org/packages/source/m/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/python"
RDEPEND=""
