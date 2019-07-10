#!/bin/bash

DEST="/usr/local/tor"

mkdir "$DEST"
tar xJvf tor-browser*.tar.xz -C "$DEST"

echo "$SUDO_USER"

chown -R "$SUDO_USER:$SUDO_USER" "$DEST"

echo "$SUDO_USER"

cp "${DEST}/tor-browser_en-US/start-tor-browser.desktop" "$HOME/Desktop/"
cp "${DEST}/tor-browser_en-US/start-tor-browser.desktop" "/usr/share/applications/"

chown "$SUDO_USER":"$SUDO_USER" "$HOME/Desktop/start-tor-browser.desktop"
chown "$SUDO_USER":"$SUDO_USER" "/usr/share/applications/start-tor-browser.desktop"
