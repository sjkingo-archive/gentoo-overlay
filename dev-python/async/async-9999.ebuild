
EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils git

DESCRIPTION="Python library for interdependent tasks in a pool of workers"
HOMEPAGE="http://gitorious.org/git-python"
EGIT_REPO_URI="git://gitorious.org/git-python/async.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-vcs/git"
DEPEND="${RDEPEND}
	dev-python/setuptools"
RESTRICT_PYTHON_ABIS="3.*"
