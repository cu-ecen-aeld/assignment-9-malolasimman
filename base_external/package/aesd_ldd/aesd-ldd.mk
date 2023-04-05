#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_LDD_VERSION = b20b1bef166cddd4d5e7d2f31a2e2e1613cf97b7
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_LDD_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-malolasimman.git
AESD_LDD_SITE_METHOD = git
AESD_LDD_GIT_SUBMODULES = YES

AESD_LDD_MODULE_SUBDIRS = aesd-char-driver/

# TODO adding all the dependencies.
define AESD_LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
