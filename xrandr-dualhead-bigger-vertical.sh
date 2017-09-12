#!/bin/bash

xrandr --newmode "2560x1600_27.00"  146.00  2560 2680 2944 3328  1600 1603 1609 1628 -hsync +vsync
xrandr --addmode DP1 2560x1600_27.00
xrandr --output DP1 --mode 2560x1600_27.00 --right-of eDP1 --rotate left
xinput --map-to-output 10 eDP1
