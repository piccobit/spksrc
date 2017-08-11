PKG_NAME = bluez
PKG_VERS = 5.46
PKG_EXT = tar.xz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_FILE = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = http://www.kernel.org/pub/linux/bluetooth
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)
PKG_DIST_FILE = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/glib cross/dbus

HOMEPAGE = http://www.bluez.org/
COMMENT  = 
LICENSE  = 

GNU_CONFIGURE = 1

include ../../mk/spksrc.cross-cc.mk
