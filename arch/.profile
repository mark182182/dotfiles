export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export TERM=/usr/bin/termite
export TERMINAL=/usr/bin/termite
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/brave
alias sdn="sudo shutdown now"
xrandr --output HDMI-A-0 --mode 2560x1440 --refresh 144
nm-applet &
#picom &
nitrogen /usr/share/backgrounds/bg2.jpg --set-auto
