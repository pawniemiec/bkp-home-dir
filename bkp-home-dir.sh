#!/bin/bash

set -ev

mono /usr/lib/duplicati/Duplicati.CommandLine.exe backup \
    "googledrive://Backups/Duplicati/?authid=$GDRIVE_AUTH"'!'"t2i" \
    /home/pawel \
    --backup-name=homedir \
    --dbpath=/home/pawel/.config/Duplicati/TENZSBNBGO.sqlite \
    --encryption-module=aes \
    --compression-module=zip \
    --dblock-size=1GB \
    --passphrase=$PASSPHRASE \
    --retention-policy="1W:1D,4W:1W,12M:1M" \
    --disable-module=console-password-input \
    --exclude="%HOME%/.ICEauthority" \
    --exclude="%HOME%/.Private/" \
    --exclude="%HOME%/.Xauthority" \
    --exclude="%HOME%/.already_installed" \
    --exclude="%HOME%/.cache/" \
    --exclude="%HOME%/.dbus/" \
    --exclude="%HOME%/.dmrc" \
    --exclude="%HOME%/.ecryptfs/" \
    --exclude="%HOME%/.java/" \
    --exclude="%HOME%/.rnd" \
    --exclude="%HOME%/.steam/" \
    --exclude="%HOME%/.sudo_as_admin_successful" \
    --exclude="%HOME%/.wine/" \
    --exclude="%HOME%/Documents/Kajko & Kokosz/" \
    --exclude="%HOME%/Downloads/" \
    --exclude="%HOME%/Games/" \
    --exclude="%HOME%/Music/" \
    --exclude="%HOME%/OneDrive/" \
    --exclude="%HOME%/Pictures/" \
    --exclude="%HOME%/Public/" \
    --exclude="%HOME%/Steam/" \
    --exclude="%HOME%/Templates/" \
    --exclude="%HOME%/Videos/" \
    --exclude="%HOME%/VirtualBox VMs/" \
    --exclude="%HOME%/examples.desktop" \
    --exclude="%HOME%/images-iso-vm/" \
    --exclude="%HOME%/nohup.out" \
    --exclude="%HOME%/snap/" \
    --exclude="%HOME%/tmp/"
