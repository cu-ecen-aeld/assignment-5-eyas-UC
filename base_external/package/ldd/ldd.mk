LDD_VERSION = '5c3cae6ddc96b8645dfa6f6bc4ddbba08aae8789' # assignment-5-socket in assignments-3 repo
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-eyas-UC.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = NO

define LDD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef
LDD_MODULES_SUBDIRS = misc-modules scull
LDD_MODULE_SUBDIRS  = $(LDD_MODULES_SUBDIRS)


# define LLD_INSTALL_TARGET_CMDS
#  	$(INSTALL) -m 0755 $(@D)/init $(TARGET_DIR)/etc/modules/$(LINUX_VERSION_PROBED)/
# 	$(INSTALL) -m 0755 $(@D)/init $(TARGET_DIR)/etc/modules/$(LINUX_VERSION_PROBED)/
# 	$(INSTALL) -m 0755 $(@D)/server/S99aesdsocket $(TARGET_DIR)/etc/init.d/S99aesdsocket
# endef

$(eval $(kernel-module))
$(eval $(generic-package))
