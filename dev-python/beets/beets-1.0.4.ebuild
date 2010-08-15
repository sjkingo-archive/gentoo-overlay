# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils versionator mercurial

EAPI=2
PYTHON_DEPEND="2:2.6"

# rename the package due to upstream conventions
MY_PN="beets"
MY_PV=$(replace_version_separator 2 'b')
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="Flexible music tagger and organizer for obsessive-compulsive music geeks"
HOMEPAGE="http://beets.radbox.org/"
EHG_REPO_URI="https://${MY_PN}.googlecode.com/hg/"
EHG_REVISION="tip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/python"
RDEPEND=">=dev-python/eventlet-0.9.3
	dev-python/munkres
	>=media-libs/musicbrainz-3.0.2
	dev-python/python-musicbrainz"

src_compile() {
	cd "${WORKDIR}/hg"
	distutils_src_compile
}

src_install() {
	cd "${WORKDIR}/hg"
	distutils_src_install
}
