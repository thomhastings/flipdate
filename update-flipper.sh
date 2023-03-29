#!/bin/bash
# update flipper script
# (c) Thom Hastings 2023 GNU General Public License v3.0
# update my Flipper Zero with all my favourite repositories
# clone repo https://github.com/thomhastings/flipdate and run

# update self
echo "Updating self..."
git pull

# update submodules
echo "Updating all submodules..."
git submodule update --remote

# TODO: mount SD card, copy files, unmount, prompt user to eject
# or better yet, just arrange some files to copy over drag'n'drop
echo "Copying extra apps..."
mkdir -p ./flipper-root
cp -R ./all-the-plugins/apps ./flipper-root/
echo "Copying BadUSB scripts..."
mkdir -p ./flipper-root/badusb
cp -R ./Flipper_Zero-BadUsb/BadUsb-Collection ./flipper-root/badusb/
echo "Copying infrared database..."
mkdir -p ./flipper-root/infrared
cp -R ./Flipper-IRDB/* ./flipper-root/infrared/
echo "Copying music files..."
mkdir -p ./flipper-root/music_player
cp -R ./flipper-music-files/* ./flipper-root/music_player/
echo -e "Done.\nCopy the contents of /flipper-root/ to root of SD card.\n"

# push update back to repo
echo "Committing submodule changes..."
git commit -a -m "updated with script"

# run in VScode or this won't work
echo "Pushing changes back to GitHub (only works in VScode terminal)."
git push

# cleanup (but only after copying has taken place)
#rm -rf flipper-zero
# Q: if a file is deleted from the repo, how to delete from Flipper Zero itself?