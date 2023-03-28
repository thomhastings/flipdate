#!/bin/bash
# update flipper script
# (c) Thom Hastings 2023 GNU General Public License v3.0
# update my Flipper Zero with all my favourite repositories
# clone repo https://github.com/thomhastings/flipdate and run

# update self
git pull

# update submodules
git submodule update --remote

# TODO: mount SD card, copy files, prompt to eject
