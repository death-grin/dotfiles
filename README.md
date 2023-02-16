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

- Install packages
```bash
pacman -S acpi acpid alsa-firmware alsa-tools alsa-utils bluez bluez-tools bluez-utilsfirefox lsd \
pavucontrol playerctl pulseaudio pulseaudio-alsa wireless_tools sof-firmware xclip xorg xorg-xinit unzip zsh
pacman -S bspwm kitty nautilus nitrogen picom rofi sxhkd
```

```bash
yay -S betterlockscreen lightdm-gtk-greeter
```
- Enable services
```
# systemctl enable acpid.service
# systemctl enable lightdm.service
```
</details>

<details>
    <summary><b>Debian</b></summary>

- Install packages
```bash
apt install acpi bspwm sxhkd picom nautilus nitrogen rofi
```
- Enable services
```
# systemctl enable acpid.service
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