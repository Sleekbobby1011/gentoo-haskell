# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Parser and printer for bencoded data."
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/bencode"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.6.1
		dev-haskell/binary
		dev-haskell/parsec"
DEPEND="dev-haskell/cabal
		${RDEPEND}"
