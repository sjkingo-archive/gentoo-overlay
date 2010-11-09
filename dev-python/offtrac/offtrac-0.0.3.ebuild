
EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils git

DESCRIPTION="Python XML-RPC client library for Trac instances"
HOMEPAGE="https://fedorahosted.org/offtrac/"
EGIT_REPO_URI="git://git.fedorahosted.org/offtrac.git"
EGIT_COMMIT="0.0.3"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/setuptools
	"
