# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Structured logging solution (PostgreSQL back end)"
HOMEPAGE="https://github.com/scrive/log"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/aeson-pretty-0.8:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?]
	>=dev-haskell/hpqtypes-1.7:=[profile?]
	>=dev-haskell/http-client-0.5:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?]
	>=dev-haskell/log-base-0.7:=[profile?] <dev-haskell/log-base-0.10:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/text-show-3.7:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
