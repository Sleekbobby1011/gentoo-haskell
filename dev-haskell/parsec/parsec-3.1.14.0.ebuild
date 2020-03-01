# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Monadic parser combinators"
HOMEPAGE="https://github.com/haskell/parsec"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-8.8
#KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""

RESTRICT=test # circular dependencies

RDEPEND=">=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/mtl-1.1.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>=dev-haskell/text-0.11.3.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
"
DEPEND="${RDEPEND}
	test? ( >=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4
		|| ( ( >=dev-haskell/hunit-1.3.1.2 <dev-haskell/hunit-1.4 )
			( >=dev-haskell/hunit-1.6 <dev-haskell/hunit-1.7 ) ) )
"

CABAL_CORE_LIB_GHC_PV="PM:8.8.1 PM:8.8.2 PM:8.8.3 PM:8.10.1_alpha1 PM:8.10.1_alpha2 PM:9999"
