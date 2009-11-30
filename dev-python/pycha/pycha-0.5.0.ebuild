# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit distutils

DESCRIPTION="A library for making charts with Python"
HOMEPAGE="http://bitbucket.org/lgs/pycha/wiki/Home"
SRC_URI="http://pypi.python.org/packages/source/p/pycha/${P}.tar.gz"

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/pycairo"
