# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="A simple podcast aggregator"
HOMEPAGE="http://podget.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND="
	net-misc/wget
	virtual/libiconv
"

DOCS=( README Changelog )

src_compile() {
	# There is a Makefile that we don't want to use.
	:
}

src_install() {
	dobin ${PN}
	doman DOC/${PN}.7
	einstalldocs
}
