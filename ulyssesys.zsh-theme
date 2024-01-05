# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#
# Mar 2013 Yad Smood

# Modified by Ulysses on Aug 8 2020

# VCS
YS_VCS_PROMPT_SUFFIX="%{$reset_color%}"
YS_VCS_PROMPT_DIRTY=" %{$fg[red]%}x"
YS_VCS_PROMPT_CLEAN=" %{$fg[green]%}o"

# Git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"

local exit_code="%(?,,%{$fg[red]%}%?%{$reset_color%})"

RPROMPT="${git_info}"

PROMPT="
%{$terminfo[bold]$fg[cyan]%}%i%{$reset_color%} \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%} \
$exit_code
%{$terminfo[bold]$fg[magenta]%}%# %{$reset_color%}"
