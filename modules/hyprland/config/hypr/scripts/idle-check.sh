#!/usr/bin/env bash

# Cek media atau proses penting
if playerctl -a status 2>/dev/null | grep -q "Playing"; then
    echo "Media sedang diputar, tidak melakukan apa-apa."
    exit 0
fi

# Gunakan eval agar perintah string dengan && dan quote dieksekusi dengan benar
eval "$@"




