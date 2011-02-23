# Copyright 2011 Dan Callaghan <djc@djc.id.au>
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"

inherit eutils python bash-completion

DESCRIPTION="utilities for yum"
HOMEPAGE="http://yum.baseurl.org/"
SRC_URI="http://yum.baseurl.org/download/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND="
	dev-util/intltool
	"

RDEPEND="
	sys-apps/yum
	"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_install() {
	emake -j1 install DESTDIR="${D}" || die
	find "${ED}" -name '*.py[co]' -print0 | xargs -0 rm || die

	# Gentooify the bashcompletion script
	rm -r "${D}"/etc/bash_completion.d/ || die
	dobashcompletion yum-utils.bash
}

pkg_postinst() {
	python_mod_optimize yumutils
	bash-completion_pkg_postinst
}

pkg_postrm() {
	python_mod_cleanup yumutils
}
