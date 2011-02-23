# Copyright 1999-2010 Gentoo Foundation
# Copyright 2011 Dan Callaghan <djc@djc.id.au>
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
PYTHON_USE_WITH="sqlite"

inherit eutils python bash-completion

DESCRIPTION="automatic updater and package installer/remover for rpm systems"
HOMEPAGE="http://yum.baseurl.org/"
SRC_URI="http://yum.baseurl.org/download/${PV:0:3}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="test"

DEPEND="dev-util/intltool
	test? ( dev-python/nose )"

RDEPEND="app-arch/rpm[python]
	dev-python/sqlitecachec
	dev-python/celementtree
	dev-libs/libxml2[python]
	dev-python/urlgrabber"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_install() {
	emake install DESTDIR="${D}" || die
	rm -r "${ED}etc/rc.d" || die
	find "${ED}" -name '*.py[co]' -print0 | xargs -0 rm -f

	# Gentooify the bashcompletion script
	rm -r "${D}"/etc/bash_completion.d/ || die
	dobashcompletion etc/yum.bash
}

pkg_postinst() {
	python_mod_optimize yum rpmUtils /usr/share/yum-cli
	bash-completion_pkg_postinst
}

pkg_postrm() {
	python_mod_cleanup yum rpmUtils /usr/share/yum-cli
}
