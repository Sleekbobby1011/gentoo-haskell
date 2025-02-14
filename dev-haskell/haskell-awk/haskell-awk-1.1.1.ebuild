# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Transform text from the command-line using Haskell expressions"
HOMEPAGE="https://hackage.haskell.org/package/haskell-awk"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # does not run: 'permission denied'

RDEPEND="dev-haskell/easy-file:=[profile?]
	>=dev-haskell/exceptions-0.1:=[profile?]
	>=dev-haskell/haskell-src-exts-1.16.0:=[profile?]
	>=dev-haskell/hint-0.3.3.5:=[profile?]
	>=dev-haskell/mtl-2.1.2:=[profile?]
	>=dev-haskell/network-2.3.1.0:=[profile?]
	>=dev-haskell/stringsearch-0.3.6.4:=[profile?]
	>=dev-haskell/transformers-0.3.0.0:=[profile?]
	>=dev-lang/ghc-7.6.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/doctest-0.3.0
		>=dev-haskell/hspec-0.2.0
		>=dev-haskell/hunit-1.1
		>=dev-haskell/temporary-1.0
		>=dev-haskell/test-framework-0.1
		>=dev-haskell/test-framework-hunit-0.2.0 )
"
