# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils eutils versionator

EAPI=2
PYTHON_DEPEND="2:2.6"

MY_PN="beets"
MY_PV=$(replace_version_separator 2 'b')
MY_P="${MY_PN}-${MY_PV}"
S="${WORKDIR}"/${MY_P}

DESCRIPTION="Flexible music tagger and organizer for obsessive-compulsive music geeks"
HOMEPAGE="http://beets.radbox.org/"
SRC_URI="http://beets.googlecode.com/files/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/python"
RDEPEND=">=dev-python/eventlet-0.9.3
	dev-python/munkres"
