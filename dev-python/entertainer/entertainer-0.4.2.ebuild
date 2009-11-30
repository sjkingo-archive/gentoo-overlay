# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="Simple and easy-to-use media center solution for GNOME and Xfce"
HOMEPAGE="https://launchpad.net/entertainer"
SRC_URI="http://launchpad.net/entertainer/entertainer-0.4/${P}/+download/${P}.tar.gz"

LICENSE="GPL2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/python"
RDEPEND=">=dev-python/pysqlite-2
		dev-python/pycairo
		dev-python/cddb-py
		dev-python/eyeD3
		dev-python/feedparser
		dev-python/pygobject
		>=dev-python/gst-python-0.10
		dev-python/pygtk
		dev-python/imaging
		dev-python/pyvorbis
		dev-python/storm
		dev-python/twisted
		dev-python/pyclutter
		dev-python/imdbpy"

# pyclutter is in the gnome overlay
# imdbpy is in the sjkwi overlay
