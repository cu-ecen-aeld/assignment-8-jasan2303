
##############################################################
#
# LDD 
# File uses Module_SUBDIRS to add the modules 
#
##############################################################

LDD_VERSION = '3749fcebd371fb940aa7efb6e64bc0389ad7b7c9'

LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-jasan2303.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules/
LDD_MODULE_SUBDIRS += scull/

define LDD_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/misc-modules/*  $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/*  $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
