#!/bin/sh

# Package
PACKAGE="openssl"
DNAME="openssl"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"


preinst ()
{
	exit 0
}

postinst ()
{
	# Create symlinks
        ln -s ${SYNOPKG_PKGDEST}/bin/sqlite3 /usr/local/bin/sqlite3
        ln -s ${SYNOPKG_PKGDEST}/bin/speexenc /usr/local/bin/speexenc
        ln -s ${SYNOPKG_PKGDEST}/bin/speexdec /usr/local/bin/speexdec

        ln -s ${SYNOPKG_PKGDEST}/lib/libsqlite3.so /usr/local/lib/libsqlite3.so
        ln -s ${SYNOPKG_PKGDEST}/lib/libsqlite3.so.0 /usr/local/lib/libsqlite3.so.0
        ln -s ${SYNOPKG_PKGDEST}/lib/libsqlite3.so.0.8.6 /usr/local/lib/libsqlite3.so.0.8.6

	export LD_LIBRARY_PATH=/usr/local/lib

	exit 0
}

preuninst ()
{
	exit 0
}

postuninst ()
{
	# Remove symlinks

        rm -f /usr/local/bin/sqlite3
        rm -f /usr/local/bin/speexenc
        rm -f /usr/local/bin/speexdec

        rm -rf /usr/local/lib/libsqlite3.so*

	exit 0
}

preupgrade ()
{
	exit 0
}

postupgrade ()
{
	exit 0
}
