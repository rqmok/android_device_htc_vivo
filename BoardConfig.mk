# Inherit common msm7x30 configs
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/htc/vivo/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := vivo

# Kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1  androidboot.selinux=permissive androidboot.hardware=qcom
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE) msmsdcc_power_gpio=88
BOARD_KERNEL_BASE := 0x04400000
BOARD_KERNEL_PAGE_SIZE := 4096

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 5194304
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_KERNEL_SOURCE := kernel/htc/msm7x30
TARGET_KERNEL_CONFIG := vivo_defconfig

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
BOARD_VOLD_MAX_PARTITIONS := 36

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/vivo/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/vivo/bluetooth/libbt_vndcfg.txt

# Camera
BOARD_HAVE_HTC_FFC := true
BOARD_USE_REVERSE_FFC := true
USE_CAMERA_STUB := true

# Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB = device/htc/msm7x30-common/rootdir/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_DEVICE_DIRS += device/htc/vivo

# Charge mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# TWRP
TW_THEME := portrait_mdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_DEVICE_MODULES := chargeled
TW_NO_SCREEN_BLANK := true
TW_INCLUDE_DUMLOCK := true
TW_NO_USB_STORAGE := true
TW_NO_CPU_TEMP := true
TW_NEW_ION_HEAP := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
