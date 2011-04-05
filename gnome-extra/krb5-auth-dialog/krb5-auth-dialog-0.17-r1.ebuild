# Copyright 1999-2011 Dan Callaghan <djc@djc.id.au>
# Distributed under the terms of the GNU General Public License v2

EAPI=3

inherit gnome2 eutils

DESCRIPTION="Tray applet for the GNOME desktop that monitors Kerberos tickets"
HOMEPAGE="https://honk.sigxcpu.org/piki/projects/krb5-auth-dialog/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="libnotify networkmanager pam"

RDEPEND="
	app-crypt/mit-krb5
	libnotify? ( x11-libs/libnotify )
	networkmanager? ( net-misc/networkmanager )
	pam? ( sys-libs/pam )
	"
DEPEND="${RDEPEND} dev-util/pkgconfig"

DOCS="AUTHORS ChangeLog MAINTAINERS NEWS README"

pkg_setup() {
	G2CONF="${G2CONF}
		--enable-pkinit
		$(use_enable networkmanager network-manager)
		$(use_with libnotify)
		$(use_with pam)
		"
}

src_prepare() {
	epatch "${FILESDIR}/${P}-libnotify.patch"
}
