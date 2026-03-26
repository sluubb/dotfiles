if [[ $TERM == linux ]]; then
    export PURE_PROMPT_SYMBOL='>'
    export PURE_PROMPT_VICMD_SYMBOL='<'
    export PURE_SUSPENDED_JOBS_SYMBOL='+'
    export PURE_GIT_DOWN_ARROW='v'
    export PURE_GIT_UP_ARROW='^'
    export PURE_GIT_STASH_SYMBOL='*'
fi

autoload -U promptinit; promptinit
prompt pure
