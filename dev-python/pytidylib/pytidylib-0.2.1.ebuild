# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=3
inherit distutils

DESCRIPTION="Python interface to HTML Tidy"
HOMEPAGE="http://countergram.com/open-source/pytidylib/"
SRC_URI="http://cloud.github.com/downloads/countergram/pytidylib/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/python"
RDEPEND="app-text/htmltidy"
