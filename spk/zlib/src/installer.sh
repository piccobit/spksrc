#!/bin/sh

# Package
PACKAGE="zlib"
DNAME="zlib"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"


preinst ()
{
	exit 0
}

postinst ()
{
	# Create symlinks
	ln -s ${SYNOPKG_PKGDEST}/include/zlib.h /usr/local/include/zlib.h
	ln -s ${SYNOPKG_PKGDEST}/include/zconf.h /usr/local/include/zconf.h

	ln -s ${SYNOPKG_PKGDEST}/lib/libz.a /usr/local/lib/libz.a
	ln -s ${SYNOPKG_PKGDEST}/lib/libz.so.1.2.11 /usr/local/lib/libz.so.1.2.11
	ln -s /usr/local/lib/libz.so.1.2.11 /usr/local/lib/libz.so.1
	ln -s /usr/local/lib/libz.so.1.2.11 /usr/local/lib/libz.so
	export LD_LIBRARY_PATH=/usr/local/lib/

	exit 0
}

preuninst ()
{
	exit 0
}

postuninst ()
{
	# Remove symlinks
	rm -f /usr/local/lib/libz.a
	rm -f /usr/local/lib/libz.so
	rm -f /usr/local/lib/libz.so.1
	rm -f /usr/local/lib/libz.so.1.2.1

	rm -rf /usr/local/include/zlib.h
	rm -rf /usr/local/include/zconf.h

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
