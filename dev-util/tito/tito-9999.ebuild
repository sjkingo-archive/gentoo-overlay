
EAPI=3
PYTHON_DEPEND="2"

inherit git-2 distutils

DESCRIPTION="A tool for managing rpm based git projects"
HOMEPAGE="http://rm-rf.ca/tito"
#SRC_URI=""
EGIT_REPO_URI="git://github.com/dgoodwin/tito.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="
	app-text/asciidoc
	"
RDEPEND="
	>=dev-python/git-python-0.2.0
	app-arch/rpm
	dev-util/rpmlint
	"

src_compile() {
	distutils_src_compile
	a2x -d manpage -f manpage titorc.5.asciidoc
	a2x -d manpage -f manpage tito.8.asciidoc
}

src_install() {
	distutils_src_install
	doman titorc.5 tito.8
}
