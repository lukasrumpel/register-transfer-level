#!/bin/bash

PKG_NAME="register-transfer-level"
ZIP_NAME="${PKG_NAME}.zip"

echo "--- Starte Bereinigung ---"

find . -type f \
    ! -name "*.tex" \
    ! -name "*.md" \
    ! -name "*.pdf" \
    ! -name "*.sty" \
    ! -name "LICENSE" \
    ! -name ".gitignore" \
    ! .name ".git" \
    ! -name "packCTAN.sh" \
    -delete

rm -rf "$PKG_NAME"
rm -f "$ZIP_NAME"

mkdir -p "$PKG_NAME"

cp -r *.tex *.md *.pdf *.sty LICENSE .gitignore doc examples "$PKG_NAME/" 2>/dev/null

zip -r "$ZIP_NAME" "$PKG_NAME/"
