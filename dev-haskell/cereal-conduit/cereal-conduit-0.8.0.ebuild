# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits"
HOMEPAGE="https://github.com/snoyberg/conduit"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cereal-0.4.0.0:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/conduit-1.3.0:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/resourcet-0.4:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/hunit
		dev-haskell/mtl )
"
