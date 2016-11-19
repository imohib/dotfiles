# Linux Mint on the Dell XPS 13 6360

### Unsolved

#### HDMI external monitor output (worrying)
* https://bugs.freedesktop.org/show_bug.cgi?id=93578

### Untested

* DP Output


## Installation

### Shink windows partition

* Disable paging
* Disable system protection
* Disable hibernation
* Maybe defragment (if you've done stuff... try skipping this)
* Disk Management - resize partition

ref: http://www.download3k.com/articles/How-to-shrink-a-disk-volume-beyond-the-point-where-any-unmovable-files-are-located-00432


### Install Linux Mint 18 from USB
* create partition scheme in available space from shinking
* boot and install


### Upgrade Packages

* tether phone to use as internet with usb, or use ethernet adapter (no wifi yet)
* run update manager, it'll require disabling secure boot on reboot, so you'll enter a password then have to enter single characters of it on boot. it's weird..
* run `sudo apt-get install linux-firmware` to bump the patch from 1.157.1 to 1.157.5
* reboot and the wifi will be working

### Upgrade Kernel to 4.8

I went through at least 4 kernels... all with little glitches here or there. 4.8 seems pretty stable

* http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.8/
* you want the amd64 'all' and the two 'generic' debs. download to a folder

#### in folder run

	sudo dpkg -i *.deb
	sudo update-grub
	sudo reboot



### Enable Scaling for the HiDPI screen:

* `Preferences -> General -> Desktop Scaling -> Double (HiDPI)`
* `alt-fn-f2` enter `r` to restart cinnamon

### Dotfiles Stuff (personal taste...)

	git clone https://github.com/dannyshaw/dotfiles.git ~/.dotfiles
	cd ~/.dotfiles
	./bin/setup


## Miscelaneous Tips

* `chrome://flags` -> `Touch Events` enabled. makes touchscreen work like a tablet in chrome

