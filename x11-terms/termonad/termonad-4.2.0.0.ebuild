# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite rebuild-after-doc-workaround"
inherit haskell-cabal

DESCRIPTION="Terminal emulator configurable in Haskell"
HOMEPAGE="https://github.com/cdepillabout/termonad"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND="dev-haskell/adjunctions:=[profile?]
	dev-haskell/aeson:=[profile?]
	dev-haskell/classy-prelude:=[profile?]
	dev-haskell/colour:=[profile?]
	dev-haskell/constraints:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/distributive:=[profile?]
	dev-haskell/dyre:=[profile?]
	dev-haskell/file-embed:=[profile?]
	dev-haskell/focuslist:=[profile?]
	dev-haskell/gi-gdk:=[profile?]
	dev-haskell/gi-gio:=[profile?]
	dev-haskell/gi-glib:=[profile?]
	>=dev-haskell/gi-gtk-3.0.24:=[profile?]
	dev-haskell/gi-pango:=[profile?]
	>=dev-haskell/gi-vte-2.91.19:=[profile?]
	>=dev-haskell/haskell-gi-base-0.21.2:=[profile?]
	dev-haskell/inline-c:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/mono-traversable:=[profile?]
	dev-haskell/pretty-simple:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/xml-conduit:=[profile?]
	dev-haskell/xml-html-qq:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	dev-libs/libpcre2
	x11-libs/vte:2.91
	x11-libs/gtk+:3
	examples? ( dev-haskell/markdown-unlit:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	>=dev-haskell/cabal-doctest-1.0.2 <dev-haskell/cabal-doctest-1.1
	virtual/pkgconfig
	test? ( dev-haskell/doctest
		dev-haskell/genvalidity-containers
		dev-haskell/genvalidity-hspec
		dev-haskell/hedgehog
		dev-haskell/tasty
		dev-haskell/tasty-hedgehog
		dev-haskell/tasty-hspec )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples buildexamples)
}
