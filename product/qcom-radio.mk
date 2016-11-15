# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.target=dpm1 \
    persist.radio.multisim.config=dsds \
    persist.radio.no_cons_man_roam=1 \
    ril.ecclist=000,08,100,101,102,110,112,118,119,120,122,911,999 \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ro.config.always_show_roaming=true \
    ro.telephony.default_network=9,9 \
    persist.radio.data_no_toggle=1 \
    persist.data.mode=concurrent \
    mdc_initial_max_retry=10 \
    persist.radio.custom_ecc=1 \
    persist.radio.sw_mbn_update=1

# RIL
ifeq ($(QCPATH),)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml
endif
