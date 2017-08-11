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
        ln -s ${SYNOPKG_PKGDEST}/bin/openssl /usr/local/bin/openssl

        ln -s ${SYNOPKG_PKGDEST}/include/openssl /usr/local/include/openssl

        mkdir /usr/local/lib/engines

        ln -s ${SYNOPKG_PKGDEST}/lib/engines/lib4759cca.so /usr/local/lib/engines/lib4759cca.so
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libaep.so /usr/local/lib/engines/libaep.so
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libatalla.so /usr/local/lib/engines/libatalla.so 
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libcapi.so /usr/local/lib/engines/libcapi.so
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libchil.so /usr/local/lib/engines/libchil.so
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libcswift.so /usr/local/lib/engines/libcswift.so 
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libgmp.so /usr/local/lib/engines/libgmp.so
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libgost.so /usr/local/lib/engines/libgost.so
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libnuron.so /usr/local/lib/engines/libnuron.so
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libpadlock.so /usr/local/lib/engines/libpadlock.so
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libsureware.so /usr/local/lib/engines/libsureware.so
        ln -s ${SYNOPKG_PKGDEST}/lib/engines/libubsec.so /usr/local/lib/engines/libubsec.so

        ln -s ${SYNOPKG_PKGDEST}/lib/libcrypto.so /usr/local/lib/libcrypto.so
        ln -s ${SYNOPKG_PKGDEST}/lib/libcrypto.so.1.0.0 /usr/local/lib/libcrypto.so.1.0.0
        ln -s ${SYNOPKG_PKGDEST}/lib/libssl.so /usr/local/lib/libssl.so
        ln -s ${SYNOPKG_PKGDEST}/lib/libssl.so.1.0.0 /usr/local/lib/

	export LD_LIBRARY_PATH=/usr/local/lib/:/usr/local/lib/engines

	exit 0
}

preuninst ()
{
	exit 0
}

postuninst ()
{
	# Remove symlinks

	rm -rf /usr/local/include/openssl

        rm -f /usr/local/bin/openssl

        rm -f /usr/local/lib/engines/lib4758cca.so
        rm -f /usr/local/lib/engines/libaep.so
        rm -f /usr/local/lib/engines/libatalla.so
        rm -f /usr/local/lib/engines/libcapi.so
        rm -f /usr/local/lib/engines/libchil.so
        rm -f /usr/local/lib/engines/libcswift.so
        rm -f /usr/local/lib/engines/libgmp.so
        rm -f /usr/local/lib/engines/libgost.so
        rm -f /usr/local/lib/engines/libnuron.so
        rm -f /usr/local/lib/engines/libpadlock.so
        rm -f /usr/local/lib/engines/libsureware.so
        rm -f /usr/local/lib/engines/libubsec.so

        rm -rf /usr/local/lib/engines

        rm -f /usr/local/lib/libcrypto.so
        rm -f /usr/local/lib/libcrypto.so.1.0.0
        rm -f /usr/local/lib/libssl.so
        rm -f /usr/local/lib/libssl.so.1.0.0

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
