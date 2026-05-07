LDD_VERSION = '5c3cae6ddc96b8645dfa6f6bc4ddbba08aae8789' # assignment-5-socket in assignments-3 repo
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-eyas-UC.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = NO


LDD_MODULES_SUBDIRS = misc-modules scull
LDD_MODULE_SUBDIRS  = $(LDD_MODULES_SUBDIRS)


define LLD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/S98lldmodules $(TARGET_DIR)/etc/init.d/S98lldmodules 
endef

$(eval $(kernel-module))
$(eval $(generic-package))
