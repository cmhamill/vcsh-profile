export XDG_CONFIG_HOME="${HOME}/etc"
export XDG_CACHE_HOME="${HOME}/.local/cache"
export XDG_DATA_HOME="${HOME}/.local/share"
mkdir -p -- "$XDG_CONFIG_HOME" "$XDG_CACHE_HOME" "$XDG_DATA_HOME"

xdg-user-dirs-update --set DESKTOP      "$HOME/inbox"
xdg-user-dirs-update --set DOWNLOAD     "$HOME/inbox"
xdg-user-dirs-update --set DOCUMENTS    "$HOME/documents"
xdg-user-dirs-update --set MUSIC        "$HOME/music"
xdg-user-dirs-update --set PICTURES     "$HOME/pictures"
xdg-user-dirs-update --set VIDEOS       "$HOME/videos"
xdg-user-dirs-update --set PUBLICSHARE  "$HOME/public"
xdg-user-dirs-update --set TEMPLATES    "$HOME/.local/templates"

for d in DESKTOP DOWNLOAD DOCUMENTS MUSIC PICTURES VIDEOS PUBLICSHARE TEMPLATES; do
    mkdir -p "$(xdg-user-dir $d)"
done
unset d
