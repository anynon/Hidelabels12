FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk
export ARCHS= armv7 arm64 arm64e
TWEAK_NAME = HideLabels12
HideLabels12_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
