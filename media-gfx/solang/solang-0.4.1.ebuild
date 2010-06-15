# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
GCONF_DEBUG="no"

inherit gnome2

DESCRIPTION="Solang is a photo manager for GNOME which uses Tracker"
HOMEPAGE="http://live.gnome.org/Solang"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="cdr"

RDEPEND="media-libs/babl
	dev-libs/dbus-glib
	dev-libs/gdl
	>=dev-cpp/geglmm-0.1
	media-gfx/gtkimageview
	>=dev-cpp/gtkmm-2.8:2.4
	>=app-misc/tracker-0.8
	app-arch/libarchive
	cdr? ( app-cdr/brasero )"
DEPEND="${RDEPEND}
	>=media-libs/gegl-0.1.2
	>=dev-util/intltool-0.35
	>=app-text/gnome-doc-utils-0.18"

DOCS="ARTISTS AUTHORS ChangeLog NEWS README TODO"

pkg_setup() {
	G2CONF="${G2CONF} $(use_enable cdr brasero-exporter)"
}
