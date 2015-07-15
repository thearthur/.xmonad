#!/bin/bash

xrandr --newmode "2560x1600_27.00"  146.00  2560 2680 2944 3328  1600 1603 1609 1628 -hsync +vsync
xrandr --addmode HDMI1 2560x1600_27.00
xrandr --output HDMI1 --mode 2560x1600_27.00 --left-of LVDS1 --rotate left --output LVDS1 --rotate normal
