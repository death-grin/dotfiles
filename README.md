# DOTFILES

<div>
    <img src="assets/desktop-002.png" alt="Desktop">
</div>

## INFO

- **OS**: [Arch Linux](https://archlinux.org/)
- **WM**: [BSPWM](https://github.com/baskerville/bspwm)
- **Bar**: [Polybar](https://polybar.github.io/)
- **Compositor**: [Picom](https://github.com/yshui/picom)
- **Editor**: [vscode](https://code.visualstudio.com/)
- **File Manager**: [nautilus](https://gitlab.gnome.org/GNOME/nautilus)
- **Launcher**: [rofi](https://github.com/davatorium/rofi)
- **Shell**: [zsh](https://www.zsh.org/)
- **Terminal Emulator**: [Kitty](https://sw.kovidgoyal.net/kitty/)

## SETUP

### Dependencies
<details>
    <summary><b>Arch Linux</b></summary>

```bash
pacman -S bspwm sxhkd picom nautilus nitrogen rofi 
```

```bash
yay -S betterlockscreen
```
</details>

<details>
    <summary><b>Debian</b></summary>

```bash
apt install bspwm sxhkd picom nautilus nitrogen rofi
```
</details>

### Configuration

- Clone repository
```bash
git clone https://github.com/death-grin/dotfiles
```
- Apply configuration
```bash
cd dotfiles/
chmod +x install.sh
./install.sh
```

### Fonts

- [Caskaydia Cove Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/CascadiaCode.zip)
- [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip)