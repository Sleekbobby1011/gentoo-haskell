# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell Language Server API for plugin communication"
HOMEPAGE="https://github.com/haskell/haskell-language-server#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/dependent-map:=[profile?]
	dev-haskell/dependent-sum:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/ghc-api-compat:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/hls-graph-1.4:=[profile?] <dev-haskell/hls-graph-1.5:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/lens:=[profile?]
	>=dev-haskell/lsp-1.2.0.1:=[profile?] <dev-haskell/lsp-1.3:=[profile?]
	dev-haskell/opentelemetry:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.1.0:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic
}
