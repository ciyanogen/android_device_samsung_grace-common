# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_grace


TARGET_LD_SHIM_LIBS := \
    /system/lib64/libexynoscamera.so|/system/lib64/libexynoscamera_shim.so \
    /system/lib/libexynoscamera.so|/system/lib/libexynoscamera_shim.so \
    /system/lib64/libstagefright.so|libstagefright_shim.so \
    /system/lib/libstagefright.so|libstagefright_shim.so \
    /system/vendor/lib64/libbauthserver.so|libbauthtzcommon_shim.so \
    /system/vendor/lib/libbauthserver.so|libbauthtzcommon_shim.so
