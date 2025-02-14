# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.1.9999
#hackport: flags: -ps

CABAL_FEATURES="lib profile" # no files: haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Embedded domain-specific language for declarative vector graphics"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cairo canvas gtk postscript rasterific +svg"

RDEPEND=">=dev-haskell/diagrams-contrib-1.4:=[profile?] <dev-haskell/diagrams-contrib-1.5:=[profile?]
	>=dev-haskell/diagrams-core-1.4:=[profile?]
	>=dev-haskell/diagrams-lib-1.4:=[profile?] <dev-haskell/diagrams-lib-1.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	cairo? ( >=dev-haskell/diagrams-cairo-1.4:=[profile?] <dev-haskell/diagrams-cairo-1.5:=[profile?] )
	canvas? ( >=dev-haskell/diagrams-canvas-1.4:=[profile?] <dev-haskell/diagrams-canvas-1.5:=[profile?] )
	gtk? ( >=dev-haskell/diagrams-gtk-1.4:=[profile?] <dev-haskell/diagrams-gtk-1.5:=[profile?] )
	postscript? ( >=dev-haskell/diagrams-postscript-1.4:=[profile?] )
	rasterific? ( >=dev-haskell/diagrams-rasterific-1.4:=[profile?] <dev-haskell/diagrams-rasterific-1.5:=[profile?] )
	svg? ( >=dev-haskell/diagrams-svg-1.4:=[profile?] <dev-haskell/diagrams-svg-1.5:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_prepare() {
	default

	cabal_chdeps \
		'diagrams-postscript >= 1.4 && < 1.5' 'diagrams-postscript >= 1.4' \
		'diagrams-core >= 1.4 && < 1.5' 'diagrams-core >= 1.4'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cairo cairo) \
		$(cabal_flag canvas canvas) \
		$(cabal_flag gtk gtk) \
		$(cabal_flag postscript postscript) \
		--flag=-ps \
		$(cabal_flag rasterific rasterific) \
		$(cabal_flag svg svg)
}
