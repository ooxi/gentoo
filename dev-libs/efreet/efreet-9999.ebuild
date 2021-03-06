# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

if [[ ${PV} == "9999" ]] ; then
	EGIT_SUB_PROJECT="legacy"
	EGIT_URI_APPEND=${PN}
	EGIT_BRANCH=${PN}-1.7
else
	SRC_URI="https://download.enlightenment.org/releases/${P}.tar.bz2"
	EKEY_STATE="snap"
fi

inherit enlightenment

DESCRIPTION="library for handling of freedesktop.org specs (desktop/icon/theme/etc...)"

LICENSE="BSD-2"
IUSE="static-libs"

RDEPEND=">=dev-libs/ecore-${PV}
	>=dev-libs/eet-${PV}
	>=dev-libs/eina-${PV}
	x11-misc/xdg-utils"
DEPEND="${RDEPEND}"

src_configure() {
	E_ECONF=(
		$(use_enable doc)
	)
	enlightenment_src_configure
}
