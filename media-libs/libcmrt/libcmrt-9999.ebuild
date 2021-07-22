# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit autotools eutils git-r3

DESCRIPTION="C for Media Runtime"
HOMEPAGE="https://github.com/01org/cmrt"
EGIT_REPO_URI="https://github.com/01org/cmrt.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="-* amd64 x86"

RDEPEND="x11-libs/libdrm"

DEPEND="${RDEPEND}
	x11-libs/libva
	virtual/pkgconfig"

src_unpack() {
	git-r3_fetch
	git-r3_checkout
}

src_prepare() {
	eautoreconf
}

src_install() {
	default
	prune_libtool_files
}
