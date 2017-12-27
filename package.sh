#!/bin/bash

set -e

_pkgversion=$(git describe --tags || echo "v0.0.0-0-unknown")
# tar -cJvf "nano-win_${_pkgversion}.tar.xz" {i686,x86_64}-w64-mingw32/{bin/nano.exe,share/{nano,doc}/}
7z a -aoa -mmt"$(nproc)" -- "nano-win_${_pkgversion}.7z" {i686,x86_64}-w64-mingw32/{bin/nano.exe,share/{nano,doc}/}
