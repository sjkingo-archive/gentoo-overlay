# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit gnome2

DESCRIPTION="C++ bindings for gegl"
HOMEPAGE="http://live.gnome.org/geglmm"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-cpp/glibmm-2.12.8:2
	>=media-libs/gegl-0.0.22"
DEPEND="${RDEPEND}"

