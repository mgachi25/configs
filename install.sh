#!/bin/bash

rm $HOME/.config/wezterm 2> /dev/null
ln -s $HOME/dev/config/wezterm/ $HOME/.config/wezterm

rm $HOME/.config/fish 2> /dev/null
ln -s $HOME/dev/config/fish/ $HOME/.config/fish

# starship prompt
rm $HOME/.config/starship.toml 2> /dev/null
ln -s $HOME/dev/config/starship/starship.toml $HOME/.config/starship.toml