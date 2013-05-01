xrandr --newmode  "2560x1440_40.00"  201.00  2560 2720 2984 3408  1440 1443 1448 1476 -hsync +vsync || true
xrandr --addmode HDMI1 "2560x1440_40.00" || true
xrandr --output HDMI1 --mode 2560x1440_40.00 --left-of LVDS1 --rotate left --output LVDS1 --rotate normal
