# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Non-GC'd, contiguous storage for immutable data structures"
HOMEPAGE="https://github.com/ezyang/compact"
HACKAGE_REV="1"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${HACKAGE_REV}.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-lang/ghc-8.2.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die

	# Convert to unix line endings
	dos2unix "${S}/${PN}.cabal" || die

	# Apply patches *after* pulling the revised cabal
	default
}
