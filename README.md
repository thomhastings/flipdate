# flipdate
script and metarepo for updating my Flipper Zero

## Cloning
`git clone https://github.com/thomhastings/flipdate --recurse-submodules`  
_**Make sure to get the submodules with `--recurse-submodules`.**_  

## Usage
* *(Optional)* Update to the latest version of [`unleashed-firmware`](https://github.com/DarkFlippers/unleashed-firmware), making sure _**not**_ to use the `e` variant. (The extra apps are included in this repo, so if you use both `e` and this you'll get doubles of every 'extra' app.)
* Run `update-flipper.sh`, then copy the contents of the `flipper-root` folder via drag'n'drop over to a typically formatted Flipper SD card filesystem. There should already be folders of the same name to _**merge**_ contents with. (Make sure to _merge_ to not lose your existing data!) For speed plug in the SD card directly, don't use qFlipper, it takes forever.

### Background
I wanted to stop doing all this manually. So I tried to automate at least part of it.

## Included Repositories
The following repositories are included via `git submodule`:
* The `Sub-GHz` folder from [`Flipper` (UberGuidoZ Playground)](https://github.com/UberGuidoZ/Flipper)
* [`Flipper-IRDB` Many IR dumps for various appliances](https://github.com/logickworkshop/Flipper-IRDB)
* [`Flipper_Zero-BadUsb` Yet another BadUSB collection](https://github.com/UNC0V3R3D/Flipper_Zero-BadUsb)
* [`FlipperAmiibo` For my friends who have a Nintendo Switch](https://github.com/Gioman101/FlipperAmiibo)
* [`all-the-plugins` Extra apps pack for Unleashed firmware](https://github.com/xMasterX/all-the-plugins)
* [`flipper-music-files` Small collection of music files for FlipperZero Music Player](https://github.com/Tonsil/flipper-music-files)

### Update Repositories
The included repositories can be updated by running the command `git submodule update --remote`.

## update-flipper.sh
This will update the included repositories using the command described above, and copy the contents of each to `flipper-root`, the contents of which should then be copied via drag'n'drop over a typically formatted Flipper SD card filesystem.
_TODO: Automatically mount and copy contents to a correctly formatted Flipper Zero microSD card, merging folders and skipping where appropriate._

#### Disclaimer
Only use firmware that is legal in your country.

#### License
[![GNU General Public License](https://www.gnu.org/graphics/gplv3-88x31.png)](https://www.gnu.org/licenses/gpl-3.0.en.html)\
[![Open Source](http://www.ipol.im/static/badges/open-source.png)](http://www.gnu.org/licenses/gpl.html)\
[![Hacker Emblem](http://catb.org/hacker-emblem/hacker.png)](http://www.catb.org/hacker-emblem/)
