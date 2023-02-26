# dotfiles
Uses [chezmoi](https://www.chezmoi.io/) to manage dotfiles.

## Requirements

Some system dependencies are specified in `system_deps`. To quickly get up and running on a fresh Arch install, run the following Very Safe™ command:

```
curl https://raw.githubusercontent.com/cmoesgaard/dotfiles/master/system_deps | xargs sudo pacman -S --noconfirm
```

## Usage

Create `.config/chezmoi/chezmoi.toml` with machine-specific data to fill templates.

```toml
[data]
    email = "email@example.com"
```

Then run

```
chezmoi init cmoesgaard
chezmoi apply
```
