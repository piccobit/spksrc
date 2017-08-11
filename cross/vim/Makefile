PKG_NAME = vim
PKG_VERS = 8.0.0836
PKG_VERS_CUT = 80
PKG_EXT = tar.gz
PKG_DIST_NAME = v$(PKG_VERS).$(PKG_EXT)
PKG_DIST_FILE = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/vim/vim/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/ncurses cross/python3

HOMEPAGE = http://www.vim.org/
COMMENT  = Vim is an advanced text editor that seeks to provide the power of the de-facto Unix editor Vi, with a more complete feature set.
LICENSE  = Charityware

GNU_CONFIGURE = 1
CFLAGS = -O2
CPPFLAGS = -O2
LDFLAGS = -l$(WORK_DIR)/install/$(INSTALL_PREFIX)/lib/libpython3.6m.so.1.0
CONFIGURE_ARGS = vim_cv_toupper_broken=no --with-tlib=ncurses vim_cv_terminfo=yes vim_cv_tty_group=world vim_cv_getcwd_broken=yes
CONFIGURE_ARGS += vim_cv_stat_ignores_slash=yes vim_cv_memmove_handles_overlap=yes
# CONFIGURE_ARGS += --disable-pythoninterp --enable-python3interp --with-python-config-dir=/spksrc/native/python3/work-native/install/usr/local/lib/python3.6/config-3.6m-x86_64-linux-gnu --enable-cscope --enable-multibyte --disable-gui --with-compiledby='Hans-Dieter Stich <hans-dieter@stich.email>' --srcdir=. --cache-file=auto/config.cache
# CONFIGURE_ARGS += vim_cv_tgent=zero --disable-pythoninterp --enable-python3interp --with-python-config-dir=/spksrc/native/python3/work-native/install/usr/local/lib/python3.6/config-3.6m-x86_64-linux-gnu --enable-cscope --enable-multibyte --disable-gui --with-compiledby='Hans-Dieter Stich <hans-dieter@stich.email>' vi_cv_path_python_conf=/spksrc/native/python3/work-native/install/usr/local/lib/python3.6/config-3.6m-x86_64-linux-gnu vi_cv_var_python_epfx=/spksrc/native/python3/work-native/install/usr/local vi_cv_var_python_pfx=/spksrc/native/python3/work-native/install/usr/local vi_cv_var_python_version=3.6
# CONFIGURE_ARGS += --with-features=huge --enable-largefile vim_cv_tgent=zero --disable-pythoninterp --enable-python3interp --with-python-config-dir=$(WORK_DIR)/install/$(INSTALL_PREFIX)/lib/python3.6/config-3.6m-x86_64-linux-gnu --enable-cscope --enable-multibyte --disable-gui --with-compiledby='Hans-Dieter Stich <hans-dieter@stich.email>'
# CONFIGURE_ARGS += --with-features=huge --enable-largefile vim_cv_tgent=zero --disable-pythoninterp --enable-python3interp --enable-cscope --enable-multibyte --disable-gui --with-compiledby='Hans-Dieter Stich <hans-dieter@stich.email>' --srcdir=. --cache-file=auto/config.cache vi_cv_path_python3=$(WORK_DIR)/install/usr/local/bin/python3 vi_cv_path_python3_conf=$(WORK_DIR)/install/usr/local/lib/python3.6/config-3.6m-x86_64-linux-gnu vi_cv_var_python3_epfx=$(WORK_DIR)/install/usr/local vi_cv_var_python3_pfx=$(WORK_DIR)/install/usr/local ac_cv_env_CFLAGS_value='-O2' ac_cv_env_LIBS_set=set ac_cv_env_LIBS_value=libpython3.6m.so.1.0
CONFIGURE_ARGS += --with-features=huge --enable-largefile vim_cv_tgent=zero --disable-pythoninterp --enable-python3interp --enable-cscope --enable-multibyte --disable-gui --with-compiledby='Hans-Dieter Stich <hans-dieter@stich.email>' --srcdir=. --cache-file=auto/config.cache


INSTALL_TARGET = myInstall

include ../../mk/spksrc.cross-cc.mk

.PHONY: myInstall
myInstall:
	$(RUN) $(MAKE) install DESTDIR=$(INSTALL_DIR)
	install -m 644 src/vimrc $(STAGING_INSTALL_PREFIX)/share/vim/vimrc
