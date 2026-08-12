#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Firmware for SpacemiT K1

PRODUCT_SOONG_NAMESPACES += vendor/spacemit/k1

# GPU PowerVR firmware
PRODUCT_PACKAGES += \
    rgx.fw.36.29.52.182 \
    rgx.sh.36.29.52.182

# WiFi RTL8852BS firmware. rtw89 asks highest-suffix-first
# (RTW8852B_FW_FORMAT_MAX = 2 -> tries -2, then -1, then unsuffixed), so which
# file is present decides which firmware runs.
#
# -2.bin is deliberately NOT shipped. Present, it is what the driver picks
# (0.29.128.0), and the card then scans without finding anything. Bianbu on the
# same board runs -1.bin (0.29.29.15) and scans fine, because its older driver
# stops at format 1. Omitting -2 makes our newer driver land on the same firmware
# Bianbu uses. Keeping the unsuffixed file only as the last-resort fallback.
PRODUCT_PACKAGES += \
    rtw8852b_fw.bin \
    rtw8852b_fw-1.bin

# Bluetooth RTL8852BS firmware
PRODUCT_PACKAGES += \
    rtl8852bs_fw \
    rtl8852bs_config

# VPU Linlon firmware
PRODUCT_PACKAGES += \
    h264dec.fwb \
    h264enc.fwb \
    hevcdec.fwb \
    hevcenc.fwb \
    vp8dec.fwb \
    vp8enc.fwb \
    vp9dec.fwb \
    vp9enc.fwb \
    jpegdec.fwb \
    jpegenc.fwb \
    mpeg2dec.fwb \
    mpeg4dec.fwb \
    avsdec.fwb \
    avs2dec.fwb \
    vc1dec.fwb \
    rvdec.fwb
