FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " file://config.json \
				  file://login_logo.patch \
                file://hummingbird.png \
				  "

do_compile_prepend() {
        cp -r ${WORKDIR}/config.json ${S}/
        cp -r ${WORKDIR}/hummingbird.png ${S}/app/assets/images/
}

