FROM scratch

COPY ./rootfs /

RUN emerge-webrsync
RUN emerge --verbose --verbose-conflicts gentoo-sources && eselect kernel set 1
RUN emerge --update --deep --with-bdeps=y --verbose --verbose-conflicts @world
