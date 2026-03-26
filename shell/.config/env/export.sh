for file in "$HOME"/.config/env/*; do
    [ "${file##*/}" = export.sh ] && continue
    [ -f "$file" ] && . "$file"
done
