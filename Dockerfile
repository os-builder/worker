FROM gentoo/stage3-amd64:latest

RUN emerge-webrsync
RUN emerge --verbose gentoo-sources && eselect kernel set 1
RUN emerge --update --deep --with-bdeps=y --verbose --verbose-conflicts @system
RUN emerge --update --deep --with-bdeps=y --verbose --verbose-conflicts @world

COPY ./portage /etc/portage
RUN emerge --update --deep --newuse --with-bdeps=y --verbose --verbose-conflicts @world

ENTRYPOINT ["emerge", "--buildpkgonly"]
