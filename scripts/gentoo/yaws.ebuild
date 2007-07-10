# $Header: /cvsroot/erlyaws/yaws/scripts/gentoo/yaws.ebuild,v 1.4 2003/05/04 23:22:34 klacke Exp $


DESCRIPTION="Yaws, a dynamic content, fast, erlang based webserver "
HOMEPAGE="http://yaws.hyber.org/"
SRC_URI="http://yaws.hyber.org/download/${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 ppc sparc alpha arm"
IUSE="ssl"

DEPEND=">=dev-lang/erlang-8b
	ssl?	( >=dev-libs/openssl-0.9.6d )"



 src_compile() {
    ./configure --prefix=/usr || die
    make || die
}

src_install() {
    make DESTDIR=${D} install || die
}

