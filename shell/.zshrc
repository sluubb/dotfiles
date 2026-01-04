for f in ~/.config/zshrc/*; do 
    if [ ! -d $f ]; then
        source $f
    fi
done

path=(~/.local/bin $path)
typeset -U path
export PATH
