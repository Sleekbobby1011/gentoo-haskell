# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile"
inherit haskell-cabal eutils elisp-common git-r3

MY_PN="Agda"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A dependently typed functional programming language and proof assistant"
HOMEPAGE="http://wiki.portal.chalmers.se/agda/"
EGIT_REPO_URI="https://github.com/agda/agda.git"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="epic +stdlib"

RDEPEND=">=dev-haskell/binary-0.6:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/boxes-0.1.3:=[profile?] <dev-haskell/boxes-0.2:=[profile?]
	~dev-haskell/data-hash-0.2.0.0:=[profile?]
	>=dev-haskell/equivalence-0.2.3:=[profile?] <dev-haskell/equivalence-0.3:=[profile?]
	>=dev-haskell/geniplate-0.6.0.3:=[profile?] <dev-haskell/geniplate-0.7:=[profile?]
	>=dev-haskell/hashtables-1.0:=[profile?] <dev-haskell/hashtables-1.2:=[profile?]
	>=dev-haskell/haskeline-0.7:=[profile?] <dev-haskell/haskeline-0.8:=[profile?]
	>=dev-haskell/haskell-src-exts-1.9.6:=[profile?] <dev-haskell/haskell-src-exts-1.16:=[profile?]
	>=dev-haskell/mtl-2.1.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	<dev-haskell/parallel-3.3:=[profile?]
	>=dev-haskell/quickcheck-2.7.5:2=[profile?] <dev-haskell/quickcheck-2.8:2=[profile?]
	>=dev-haskell/stmonadtrans-0.3.2:=[profile?] <dev-haskell/stmonadtrans-0.4:=[profile?]
	>=dev-haskell/strict-0.3.2:=[profile?] <dev-haskell/strict-0.4:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/xhtml-3000.2:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-haskell/zlib-0.4.0.1:=[profile?] <dev-haskell/zlib-0.6:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	epic? ( >=dev-lang/epic-0.1.13:=[profile?] <dev-lang/epic-0.10:=[profile?] )
	|| ( ( >=dev-haskell/hashable-1.1.2.3:=[profile?] <dev-haskell/hashable-1.2:=[profile?] )
		( >=dev-haskell/hashable-1.2.1.0:=[profile?] <dev-haskell/hashable-1.3:=[profile?] ) )
"
RDEPEND+="
		app-emacs/haskell-mode
		virtual/emacs
"
PDEPEND="stdlib? ( sci-mathematics/agda-stdlib )"
DEPEND="${RDEPEND}
		dev-haskell/alex
		>=dev-haskell/cabal-1.8
		dev-haskell/happy"

SITEFILE="50${PN}2-gentoo.el"
S="${WORKDIR}/${P}"

src_prepare() {
	cabal_chdeps \
		'mtl >= 2.1.1 && < 2.2' 'mtl >= 2.1.1 && < 2.3' \
		'transformers == 0.3.*' 'transformers >= 0.3 && < 0.5'

	sed -e '/.*emacs-mode.*$/d' \
		-i "${S}/${MY_PN}.cabal" \
		|| die "Could not remove agda-mode from ${MY_PN}.cabal"

	if use epic && use stdlib; then
		ewarn "Note that the agda-stdlib README:"
		ewarn "http://www.cse.chalmers.se/~nad/listings/lib/README.html"
		ewarn 'says: "Currently the library does not support the Epic or JavaScript compiler'
		ewarn 'backends." Hence you may wish to remove the epic use flag if you wish to use'
		ewarn "the Agda standard library."
	fi
	sed -e 's@-Werror@@g' \
		-i "${S}/${MY_PN}.cabal" \
		-i "${S}/mk/config.mk.in" \
		-i "${S}/src/prototyping/eval/Makefile" \
		-i "${S}/src/prototyping/nameless/Makefile" \
		-i "${S}/src/rts/${PN}-rts.cabal" \
		|| die "sed to remove -Werror failed"
	sed -e '/, "-Werror"/d' \
		-i "${S}/src/full/Agda/Compiler/MAlonzo/Compiler.hs" \
		|| die "sed to remove -Werror from Compiler.hs failed"
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag epic epic)
}

src_compile() {
	BYTECOMPFLAGS="-L ./src/data/emacs-mode"
	elisp-compile src/data/emacs-mode/*.el \
		|| die "Failed to compile emacs mode"
	haskell-cabal_src_compile
}

src_install() {
	local add="${ED}"/usr/share/"${P}/ghc-$(ghc-version)"

	haskell-cabal_src_install

	# generate Primitive.agdai, emulate Setup.hs postinst phase
	Agda_datadir="${add}" \
		"${ED}"/usr/bin/agda "${add}"/lib/prim/Agda/Primitive.agda

	rm "${ED}"/usr/bin/agda-mode || die
	# lives in sci-mathematics/agda-executable
	rm "${ED}"/usr/bin/agda || die

	elisp-install ${PN} src/data/emacs-mode/*.el \
		|| die "Failed to install emacs mode"
	elisp-site-file-install "${FILESDIR}/${SITEFILE}" \
		|| die "Failed to install elisp site file"
}

pkg_postinst() {
	ghc-package_pkg_postinst
	elisp-site-regen
}

pkg_postrm() {
	ghc-package_pkg_prerm
	elisp-site-regen
}
