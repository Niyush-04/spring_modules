load(":securemsm_kernel.bzl", "define_consolidate_gki_modules")

def define_mdm9607():
    define_consolidate_gki_modules(
        target = "mdm9607",
        modules = [
            "smcinvoke_dlkm",
            "tz_log_dlkm",
            "qce50_dlkm",
            "qcedev-mod_dlkm",
            "qrng_dlkm",
            "qseecom_dlkm"
        ],
        extra_options = [
            "CONFIG_QCOM_SMCINVOKE",
        ],
        arch = "arm"
    )
