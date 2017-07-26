# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Converting to/from HTTP API data like URL pieces, headers and query parameters"
HOMEPAGE="https://github.com/fizruk/http-api-data"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
#part of ghc-8.2.1 transition
#KEYWORDS="~amd64 ~x86"
IUSE="use-text-show"

RDEPEND=">=dev-haskell/attoparsec-0.13.0.1:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/attoparsec-iso8601-1.0.0.0:=[profile?] <dev-haskell/attoparsec-iso8601-1.1:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/text-0.5:=[profile?]
	>=dev-haskell/time-locale-compat-0.1.1.0:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/uri-bytestring:=[profile?]
	>=dev-haskell/uuid-types-1.0.2:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	use-text-show? ( >=dev-haskell/text-show-2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3 <dev-haskell/cabal-2.1
	>=dev-haskell/cabal-doctest-1.0.1 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.11 <dev-haskell/doctest-0.12
		>=dev-haskell/hspec-1.3
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.9
		>=dev-haskell/quickcheck-instances-0.3.12
		dev-haskell/uuid )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag use-text-show use-text-show)
}
