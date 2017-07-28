PKG_NAME = pygattlib
PKG_VERS = stable
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/matthewelse/pygattlib/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)
PKG_DIST_FILE = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/libffi cross/glib cross/bluez cross/boost

HOMEPAGE = https://github.com/matthewelse/pygattlib/
COMMENT  = 
LICENSE  = 

BUILD_DEPENDS = cross/python3 cross/setuptools cross/pip cross/wheel
WHEELS = src/requirements.txt

include ../../mk/spksrc.python-wheel.mk
