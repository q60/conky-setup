uri=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | grep -A 1 "artUrl" | grep -v "artUrl" | grep -Eo "\".+" | xargs`
id=`sed "s/https:\/\/i\.scdn\.co\/image\///" <<< $uri`
if [[ ! -e ~/.config/conky/.cache/cover-$id.jpg ]]; then
    wget $uri -O ~/.config/conky/.cache/cover-$id.jpg
fi
cp ~/.config/conky/.cache/cover-$id.jpg ~/.config/conky/cover.jpg
