# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2:2.6" # I guess?

inherit distutils

DESCRIPTION="GUI test tool and automation framework written in Python"
HOMEPAGE="https://fedorahosted.org/dogtail/"
SRC_URI="https://fedorahosted.org/released/${PN}/${P}.tar.gz"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="
	dev-python/setuptools
	dev-python/pygtk
	dev-python/libgnome-python
	"
RDEPEND="
	${DEPEND}
	x11-base/xorg-server
	"
