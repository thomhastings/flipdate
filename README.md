# flipdate
script and metarepo for updating my Flipper Zero

### Background
I wanted to stop doing all this manually. So I tried to automate at least part of it.

## Included Repositories
The following repositories are included via `git submodule`:
* [`Flipper-IRDB` Many IR dumps for various appliances](https://github.com/logickworkshop/Flipper-IRDB)
* [`Flipper_Zero-BadUsb` Yet another BadUSB collection](https://github.com/UNC0V3R3D/Flipper_Zero-BadUsb)
* [`unleashed-extra-pack` Extra apps pack for Unleashed firmware](https://github.com/xMasterX/unleashed-extra-pack)
* [`flipper-music-files` Smaller collection of music files for FlipperZero Music Player](https://github.com/Tonsil/flipper-music-files)

### Update Repositories
The included repositories can be updated by running the command `git submodule update --remote`.

## update-flipper.sh
This will update the included repositories using the command described above.  
_TODO: Copy their contents to a correctly formatted Flipper Zero microSD card._

#### Disclaimer
Only use firmware that is legal in your country.

#### License
[![GNU General Public License](https://www.gnu.org/graphics/gplv3-88x31.png)](https://www.gnu.org/licenses/gpl-3.0.en.html)\
[![Open Source](http://www.ipol.im/static/badges/open-source.png)](http://www.gnu.org/licenses/gpl.html)\
[![Hacker Emblem](http://catb.org/hacker-emblem/hacker.png)](http://www.catb.org/hacker-emblem/)