xrandr --output eDP1 --scale 1.0x1.0
#xrandr --output DP1-3  --mode 1280x1024  --left-of eDP1
xrandr --output DP1-1 --mode 1680x1050 --left-of eDP1  --rotate right
xrandr --output DP1-2 --mode 1680x1050 --left-of DP1-1 --rotate left
xrandr --output eDP1 --scale 0.5x0.5
xinput --map-to-output 10 eDP1
