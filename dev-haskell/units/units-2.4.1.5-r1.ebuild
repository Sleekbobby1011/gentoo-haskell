# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A domain-specific type system for dimensional analysis"
HOMEPAGE="https://github.com/goldfirere/units"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""

RDEPEND=">=dev-haskell/lens-4:=[profile?] <dev-haskell/lens-6:=[profile?]
	>=dev-haskell/linear-1.16.2:=[profile?]
	>=dev-haskell/mtl-1.1:=[profile?]
	>=dev-haskell/multimap-1.2:=[profile?]
	>=dev-haskell/singletons-3:=[profile?] <dev-haskell/singletons-4:=[profile?]
	>=dev-haskell/singletons-th-3:=[profile?] <dev-haskell/singletons-4:=[profile?]
	>=dev-haskell/singletons-base-3:=[profile?] <dev-haskell/singletons-4:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?]
	>=dev-haskell/th-desugar-1.5.4:=[profile?]
	>=dev-haskell/units-parser-0.1:=[profile?] <dev-haskell/units-parser-1.0:=[profile?]
	>=dev-haskell/vector-space-0.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
