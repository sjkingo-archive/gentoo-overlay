
EAPI="3"
PYTHON_DEPEND="2"
RESTRICT_PYTHON_ABIS="3.*"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="Python library for e-mail delivery"
HOMEPAGE="http://www.python-turbomail.org/"
SRC_URI="http://bitbucket.org/gothalice/${PN}/get/${PV}.tar.bz2 -> ${P}.tar.bz2"
S="${WORKDIR}/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	"
DEPEND="${RDEPEND}
	"

src_prepare() {
	distutils_src_prepare
	sed -i -e 's@packages=find_packages()@packages=find_packages(exclude=["tests"])@' setup.py
}
