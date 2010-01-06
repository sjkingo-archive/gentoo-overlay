NEED_PYTHON=2.3

inherit distutils

DESCRIPTION="Python client for the Solr search service"
HOMEPAGE="http://code.google.com/p/solrpy"
SRC_URI="http://pypi.python.org/packages/source/s/solrpy/${P}.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~sparc ~x86"
IUSE=""

DEPEND="dev-python/setuptools"
RDEPEND="${DEPEND}"
