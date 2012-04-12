USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/nozomi/BoardConfigVendor.mk

#inherit from the common fuji definitions
-include device/sony/fuji-common/BoardConfigCommon.mk

TARGET_PREBUILT_KERNEL := device/sony/nozomi/kernel

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16

# the following two sizes are generous guesses
# since these partitions are not visible
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATA_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p15
