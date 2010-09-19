
EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
EGIT_HAS_SUBMODULES="true"

inherit distutils git

DESCRIPTION="Pure-Python git object database"
HOMEPAGE="http://gitorious.org/git-python"
EGIT_REPO_URI="git://gitorious.org/git-python/gitdb.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-vcs/git"
DEPEND="${RDEPEND}
	dev-python/setuptools
	dev-python/async
	"
RESTRICT_PYTHON_ABIS="3.*"
