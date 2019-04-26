dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
rescuetime 
setxkbmap -model pc102 -layout us -variant intl -option caps:ctrl_modifier
exec i3
