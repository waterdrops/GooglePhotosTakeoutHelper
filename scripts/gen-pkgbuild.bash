#!/bin/bash
# Script to generate PKGBUILD files for Ałycz Linux
txt="# Maintainer: TheLastGimbus <mateusz.soszynski@tuta.io>
pkgname=gpth-bin
pkgver=$(grep -oP '(?<=version: ).*' pubspec.yaml)
pkgrel=1
pkgdesc='Tool to help you with exporting stuff from Google Photos'
arch=('x86_64')
url='https://github.com/TheLastGimbus/GooglePhotosTakeoutHelper'
license=('Apache')
depends=()
provides=('gpth')
conflicts=('gpth')
options=('!strip')
source=(\"\${url}/releases/download/v\${pkgver}/gpth-v\${pkgver}-Linux.exe\")
sha256sums=('$(sha256sum "$1" | cut -d " " -f 1)')

package() {
    install -Dm755 \"gpth-v\${pkgver}-Linux.exe\" \"\${pkgdir}/usr/bin/gpth\"
}"

echo "$txt" >PKGBUILD
