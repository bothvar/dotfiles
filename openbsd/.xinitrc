xbindkeys &
unclutter &
wsconsctl mouse.tp.tapping=1,3,2
xsetroot -cursor_name tcross &
sxhkd &
slstatus -s | lemonbar-xft -f "IBM Plex Mono" -B "#2e3440" -F "#88c0d0" &
feh --bg-scale ~/images/nord.png &
st -e /bin/ksh -l &
# mpd &
exec bspwm
