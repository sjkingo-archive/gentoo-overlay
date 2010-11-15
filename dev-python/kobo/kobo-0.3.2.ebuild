
EAPI="3"
PYTHON_DEPEND="2"
RESTRICT_PYTHON_ABIS="3.*"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="Kobo is set of python modules designed for rapid tools development."
HOMEPAGE="https://fedorahosted.org/kobo/"
SRC_URI="https://fedorahosted.org/releases/${PN:0:1}/${PN:1:1}/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	"
DEPEND="${RDEPEND}
	"
