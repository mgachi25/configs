# --- Abbreviations ------------------------------------------------

# General
alias ls 'lsd'
alias unset 'set --erase'
abbr -a rm "trash" 
abbr -a cat "bat" 

# Coding
abbr -a c   'cargo'
abbr -a ct  'cargo t'
abbr -a e   'nvim'
abbr -a vim 'nvim'
abbr -a ta  'tmux attach'
abbr -a tn  'tmux new -s'

# Git
abbr -a gco 'git'
abbr -a gb  'git branch'
abbr -a ga  'git add -p'
abbr -a gc  'git commit -m'
abbr -a gca 'git commit --amend -m'
abbr -a gco 'git checkout'
abbr -a gs  'git status'

# Push 
abbr -a gp  'git push'
abbr -a gpa 'git push --all'
abbr -a gpA 'git push --all && git push --tags'
abbr -a gpt 'git push --tags'
abbr -a gpc 'git push --set-upstream origin (git branch --show-current)'

# Rebase
abbr -a gr  'git rebase'
abbr -a gra 'git rebase --abort'
abbr -a grc 'git rebase --continue'
abbr -a gri 'git rebase --interactive'
abbr -a grs 'git rebase --skip'

# Utils
abbr -a gah 'git stash; and git pull --rebase; and git stash pop'
abbr -a vimdiff 'nvim -d'

# --- Path Overide ---------------------------------------------------

set -U fish_user_paths /opt/local/bin $fish_user_paths
set -U fish_user_paths /usr/local/sbin $fish_user_paths
set -U fish_user_paths /usr/local/bin $fish_user_paths
set -U fish_user_paths $HOME/.bin $fish_user_paths

# Rust
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
set -U fish_user_paths $HOME/.cargo-target/release $fish_user_paths

# Docker
set -U fish_user_paths $HOME/.docker/bin $fish_user_paths

# --- Shell Hooks ----------------------------------------------------

eval (direnv hook fish)

zoxide init --cmd j fish | source

# Nvm for fish
fnm env | source

# fzf for fish
fzf --fish | source

# Prompt manager
starship init fish | source

# pyenv: use function since it it slow at starup
status is-login; and pyenv init --path | source
pyenv init - --no-rehash | source

# --- Shell Props ------------------------------------------------------
set fish_greeting



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/miniconda3/bin/conda
    eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
        . "/opt/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

