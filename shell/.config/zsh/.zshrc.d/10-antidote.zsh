plugins_txt=$config_dir/plugins.txt
plugins_zsh=$cache_dir/plugins.zsh

fpath=(/usr/share/zsh-antidote/functions $fpath)
autoload -Uz antidote

if [[ ! $plugins_zsh -nt $plugins_txt ]]; then
    antidote bundle <$plugins_txt >|$plugins_zsh
fi

source $plugins_zsh
