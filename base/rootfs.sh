#!/bin/sh

die() {
  echo "$@" 1>&2
  exit 1
}

base_url="http://distfiles.gentoo.org/releases/amd64/autobuilds"

latest_stage3=$( wget -qO - "${base_url}/latest-stage3-amd64.txt" 2> /dev/null |  grep -v '#' |  awk '{print $1}')
stage3=$( basename "${latest_stage3}")
echo "Downloading the stage tarball..."
wget "${base_url}/${latest_stage3}" || die "Could not download the stage tarball"

echo "Installing the stage tarball..."
tar -C ./rootfs --exclude="./dev/*" --exclude="./etc/hosts" --exclude="./sys/*" --exclude="./proc/*" -xvpf "${stage3}"

