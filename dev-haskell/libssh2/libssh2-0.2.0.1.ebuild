# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="FFI bindings to libssh2 SSH2 client library (http://libssh2.org/)"
HOMEPAGE="https://github.com/portnov/libssh2-hs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/network-2.3:=[profile?]
		>=dev-haskell/syb-0.3.3:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		net-libs/libssh2
		"
DEPEND="${RDEPEND}
		dev-haskell/c2hs
		>=dev-haskell/cabal-1.8"

PATCHES=("${FILESDIR}"/${P}-network.patch)
