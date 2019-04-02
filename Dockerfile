FROM b4rti/gentoo-stage3-amd64

COPY ./portage /etc/portage
RUN emerge --update --deep --newuse --with-bdeps=y --verbose --verbose-conflicts @world

ENTRYPOINT ["emerge", "--verbose", "--verbose-conflicts", "--buildpkg"]
