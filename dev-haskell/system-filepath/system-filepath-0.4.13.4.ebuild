# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Drop test-suite: uses dev-haskell/chell-quickcheck
inherit haskell-cabal

DESCRIPTION="High-level, byte-based file and directory path manipulations (deprecated)"
HOMEPAGE="https://github.com/fpco/haskell-filesystem"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test

RDEPEND=">=dev-haskell/text-0.11.0.6:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
