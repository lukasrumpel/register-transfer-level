#!/bin/bash

PKG_NAME="register-transfer-level"
ZIP_NAME="${PKG_NAME}.zip"

#find . -type f \
#    ! -name "*.tex" \
#    ! -name "*.md" \
#    ! -name "*.pdf" \
#    ! -name "*.sty" \
#    ! -name "*.svg" \
#    ! -name "LICENSE" \
#    ! -name ".gitignore" \
#    ! .name ".git" \
#    ! -name "packCTAN.sh" \
#    -delete

rm -rf "$PKG_NAME"
rm -f "$ZIP_NAME"

mkdir -p "$PKG_NAME"

cp -r *.tex *.md *.pdf *.sty LICENSE doc examples "$PKG_NAME/" 2>/dev/null

cp -r doc examples "$PKG_NAME/" 2>/dev/null

find "$PKG_NAME" -name "*.aux" -delete
find "$PKG_NAME" -name "*.log" -delete
find "$PKG_NAME" -name "*.out" -delete
find "$PKG_NAME" -name "*.toc" -delete
find "$PKG_NAME" -name "*.fdb_latexmk" -delete
find "$PKG_NAME" -name "*.fls" -delete
find "$PKG_NAME" -name "*.listing" -delete
find "$PKG_NAME" -name "*.idx" -delete
find "$PKG_NAME" -name "*.ind" -delete
find "$PKG_NAME" -name "*.ilg" -delete
find "$PKG_NAME" -name "*.xml" -delete
find "$PKG_NAME" -name "*.gz" -delete
find "$PKG_NAME" -name "*.bcf" -delete
find "$PKG_NAME" -name "*.bbl" -delete
find "$PKG_NAME" -name "*.blg" -delete
find "$PKG_NAME" -name ".*" -delete

zip -r "$ZIP_NAME" "$PKG_NAME/"
