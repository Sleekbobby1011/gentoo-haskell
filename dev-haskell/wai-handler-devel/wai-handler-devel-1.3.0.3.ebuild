# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="WAI server that automatically reloads code after modification."
HOMEPAGE="http://github.com/yesodweb/wai"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?]
		>=dev-haskell/cmdargs-0.4:=[profile?]
		>=dev-haskell/hint-0.3.2.3:=[profile?]
		<dev-haskell/hint-0.4:=[profile?]
		=dev-haskell/http-types-0.7*:=[profile?]
		>=dev-haskell/network-2.2.1.5:=[profile?]
		>=dev-haskell/text-0.7:=[profile?]
		>=dev-haskell/transformers-0.2.2:=[profile?]
		=dev-haskell/wai-1.3*:=[profile?]
		=dev-haskell/wai-extra-1.3*:=[profile?]
		=dev-haskell/warp-1.3*:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
