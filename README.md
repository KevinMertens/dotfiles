# Dotfiles for Arch Linux + Hyprland

This repository contains my personal configuration files ("dotfiles") for an Arch Linux setup featuring [Hyprland](https://github.com/hyprwm/Hyprland). All configs are managed and deployed using [GNU stow](https://www.gnu.org/software/stow/).

## 📦 Features

- Easy modular management of dotfiles
- Designed for Arch Linux with Hyprland as the window manager
- Includes configs for shell, editor, desktop environment, and more
- Uses [GNU stow](https://www.gnu.org/software/stow/) for simple symlink-based installation

## 🚀 Installation

### 1. Clone the Repository

```sh
git clone https://github.com/KevinMertens/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Prerequisites

- Arch Linux (or compatible distro)
- [GNU stow](https://www.gnu.org/software/stow/) installed:

```sh
sudo pacman -S stow
```

### 3. Using GNU Stow

Each subdirectory (e.g., `bash`, `nvim`, `hypr`) contains configuration files for a specific application.  
To install configs, use stow to symlink them into your `$HOME`:

```sh
stow <package>
```

For example, to stow your Hyprland configs:

```sh
stow hypr
```

You can stow multiple packages at once:

```sh
stow bash zsh nvim hypr
```

To remove a stowed package:

```sh
stow -D <package>
```

### 4. Customizing

After stowing, configs will be symlinked to your home directory. You can safely edit these files, commit changes, and update across machines.

## 🛠️ Updating

Simply git pull the latest changes and re-run `stow` for any new/updated packages:

```sh
git pull
stow <updated-package>
```

## 💡 Tips

- Only stow packages relevant to your setup.
- Conflicting dotfiles should be removed or backed up before stowing.
- For system-wide configs, run stow with appropriate permissions.

## ⚡ Resources

- [GNU Stow Manual](https://www.gnu.org/software/stow/manual/stow.html)
- [Arch Wiki: Dotfiles](https://wiki.archlinux.org/title/Dotfiles)
- [Hyprland](https://github.com/hyprwm/Hyprland)

---

**Kevin Mertens**  
If you have any questions or suggestions, feel free to open an issue or PR!
