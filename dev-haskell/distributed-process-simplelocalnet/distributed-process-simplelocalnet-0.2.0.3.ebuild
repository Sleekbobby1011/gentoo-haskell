# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Simple zero-configuration backend for Cloud Haskell"
HOMEPAGE="http://github.com/haskell-distributed/distributed-process"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/binary-0.5*[profile?]
		=dev-haskell/data-accessor-0.2*[profile?]
		=dev-haskell/distributed-process-0.2*[profile?]
		=dev-haskell/network-2.3*[profile?]
		=dev-haskell/network-multicast-0.0*[profile?]
		=dev-haskell/network-transport-0.2*[profile?]
		=dev-haskell/network-transport-tcp-0.2*[profile?]
		>=dev-haskell/transformers-0.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-lang/ghc-6.12.3"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
