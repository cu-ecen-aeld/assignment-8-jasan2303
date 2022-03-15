
##############################################################
#
# aesd-char 
# File uses Module_SUBDIRS to add the modules 
#
##############################################################

AESDCHAR_VERSION = 'dca94b525e332a27e4de45acdbf5b976e1b511de'

AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-jasan2303.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS += aesd-char-driver/


define AESDCHAR_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload  $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load  $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/*  $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
