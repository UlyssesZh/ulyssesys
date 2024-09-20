# ulyssesys

A minimalist and informative shell theme based on [ys](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#ys).

## Features

- Only ANSI colors and ASCII chars are used, so that this theme is suitable for both graphical terminal emulators
and virtual terminals (text TTY).
- The colors are designed so that this theme can be used with both light and dark backgrounds.
- Shows command index, full path to the current directory, exit code of last command, and current Git branch,
in a non-cluttering way.
- Indicates `nix-shell` environment
(for Zsh, use with the [nix-shell plugin](https://github.com/chisui/zsh-nix-shell)).

## Screenshots

![light](https://raw.githubusercontent.com/ulysseszh/ulyssesys/master/screenshots/light.png)
![dark](https://raw.githubusercontent.com/ulysseszh/ulyssesys/master/screenshots/dark.png)

## Installation

### Zsh

With [Oh My Zsh](https://ohmyz.sh/) installed, run

```shell
curl --output-dir $ZSH/custom/themes --create-dirs --remote-name https://github.com/UlyssesZh/ulyssesys/raw/refs/heads/master/ulyssesys.zsh-theme
```

Then, in `~/.zshrc`, set `ZSH_THEME=ulyssesys` before `source $ZSH/oh-my-zsh.sh`.

### PowerShell

With [Oh My Posh](https://ohmyposh.dev) installed, add this to `$PROFILE`:

```powershell
oh-my-posh init pwsh --config "https://github.com/UlyssesZh/ulyssesys/raw/refs/heads/master/ulyssesys.omp.json" | Invoke-Expression
```

## License

MIT.
