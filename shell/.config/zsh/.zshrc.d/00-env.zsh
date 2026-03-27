cache_dir="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
config_dir="${ZDOTDIR:-${XDG_CONFIG_HOME:-$HOME/.config}/zsh}"
state_dir="${XDG_STATE_HOME:-$HOME/.local/state}/zsh"

mkdir -p "$cache_dir" "$config_dir" "$state_dir"
