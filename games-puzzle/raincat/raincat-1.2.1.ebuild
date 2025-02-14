# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES=""
inherit haskell-cabal

MY_PN="Raincat"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A puzzle game written in Haskell with a cat in lead role"
HOMEPAGE="http://raincat.bysusanlin.com/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/extensible-exceptions:=
	dev-haskell/glut:=
	dev-haskell/mtl:=
	dev-haskell/opengl:=
	dev-haskell/random:=
	dev-haskell/sdl2:=
	dev-haskell/sdl2-image:=
	dev-haskell/sdl2-mixer:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

S="${WORKDIR}/${MY_P}"
