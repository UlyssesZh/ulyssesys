# https://github.com/ulysseszh/ulyssesys

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}o"

local num='%{$terminfo[bold]$fg[cyan]%}%i%{$reset_color%}'
local pwd='%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}'
local prompt='%{$terminfo[bold]$fg[magenta]%}%#%{$reset_color%}'
local exit_code='%(?,,%{$fg[red]%}%?%{$reset_color%})'
local git='$(git_prompt_info)'

if [[ -n $container ]] then
	if [[ -n $CONTAINER_ID ]] then
		container_name=": $CONTAINER_ID"
	fi
	container_name="$container$container_name"
	container_name='%{$terminfo[bold]$fg[blue]%}'$container_name'%{$reset_color%} '
fi

if [[ ( -n ${IN_NIX_SHELL} && ${IN_NIX_SHELL} != "0" ) || ( -n ${IN_NIX_RUN} && ${IN_NIX_RUN} != "0" ) ]] then
	if [[ -n ${IN_WHICH_NIX_SHELL} ]] then
		nix_shell_name=": ${IN_WHICH_NIX_SHELL}"
	fi
	if [[ -n ${IN_NIX_SHELL} && ${IN_NIX_SHELL} != "0" ]] then
		nix_shell_name="nix-shell$nix_shell_name"
	else
		nix_shell_name="nix-run$nix_shell_name"
	fi
	nix_shell='%{$terminfo[bold]$fg[blue]%}'$nix_shell_name'%{$reset_color%} '
fi

RPROMPT="$git"
PROMPT="
$container_name$nix_shell$num $pwd $exit_code
$prompt "
