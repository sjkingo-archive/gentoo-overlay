
EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils git

MY_PN="GitPython"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="GitPython is a python library used to interact with Git repositories."
HOMEPAGE="http://gitorious.org/git-python http://pypi.python.org/pypi/GitPython"
#SRC_URI="http://pypi.python.org/packages/source/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"
EGIT_REPO_URI="git://gitorious.org/git-python/mainline.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-vcs/git
	dev-python/gitdb
	"
DEPEND="${RDEPEND}
	dev-python/setuptools"
RESTRICT_PYTHON_ABIS="3.*"

S="${WORKDIR}/${MY_P}"

PYTHON_MODNAME="git"
