#!/bin/bash

mkdir -p extracted

for file in ota/*.img; do
    filename="${file%.*}"
    filename_without_prefix="${filename#ota/}"

    ./fsck.erofs --extract="extracted/${filename_without_prefix}" "${file}"
done
