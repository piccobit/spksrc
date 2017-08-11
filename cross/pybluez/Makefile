PKG_NAME = pybluez
PKG_VERS = 0.22
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_FILE = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/karulis/pybluez/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)
PKG_DIST_FILE = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/bluez

HOMEPAGE = https://github.com/karulis/pybluez
COMMENT  = 
LICENSE  = 

BUILD_DEPENDS = cross/python3 cross/setuptools cross/pip cross/wheel
#WHEELS = src/requirements.txt

include ../../mk/spksrc.python-wheel.mk
