# DOTFILES

<div>
    <img src="assets/desktop-002.png" alt="Desktop">
</div>

## INFO

- **OS**: [Arch Linux](https://archlinux.org/)
- **WM**: [BSPWM](https://github.com/baskerville/bspwm)
- **Bar**: [polybar](https://polybar.github.io/)
- **Compositor**: [picom](https://github.com/yshui/picom)
- **Editor**: [vscode](https://code.visualstudio.com/)
- **File Manager**: [nautilus](https://gitlab.gnome.org/GNOME/nautilus)
- **Launcher**: [rofi](https://github.com/davatorium/rofi)
- **Shell**: [zsh](https://www.zsh.org/)
- **Terminal Emulator**: [kitty](https://sw.kovidgoyal.net/kitty/)

## SETUP

### Dependencies
<details>
    <summary><b>Arch Linux</b></summary>

- Install packages
```
pacman -S acpi acpid alsa-firmware alsa-tools alsa-utils bluez bluez-tools bluez-utilsfirefox lsd \
pavucontrol playerctl pulseaudio pulseaudio-alsa wireless_tools sof-firmware xclip xorg xorg-xinit \
unzip zsh
pacman -S bspwm kitty nautilus nitrogen obsidan picom rofi sxhkd
```

```
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
```
apt install acpi bspwm sxhkd picom nautilus nitrogen rofi
```
- Enable services
```
# systemctl enable acpid.service
```
</details>

### Configuration

- Clone repository
```
git clone https://github.com/death-grin/dotfiles
```
- Apply configuration
```
cd dotfiles/
chmod +x install.sh
./install.sh
```
- Add `target` function to `~/.bashrc` or `~/.zshrc` file
```sh
function target
{
    target_ip=$1
    if [[ "$target_ip" == "remove" ]]; then
      /usr/bin/sed -i 's/^target=".*"/target=""/' ~/.config/polybar/scripts/target.sh
      echo -e "TARGET HAS BEEN REMOVED"
    else
      /usr/bin/sed -i "s/^target=\"\"$/target=\"$target_ip\"/" ~/.config/polybar/scripts/target.sh
      echo -e "TARGET HAS BEEN SET!"
    fi 
}
```

```sh
# Add target
target 10.10.10.100
# Remove target
target remove
```

### Fonts

- [Caskaydia Cove Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/CascadiaCode.zip)
- [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip)

## KEYBINDINGS

<details>
    <table>
        <thead>
            <th>Keys</th>
            <th>Action</th>
        </thead>
        <tr>
            <td align="center"><keyboard>Mod4 + Return</keyboard></td>
            <td align="center">Launch kitty</td>
        </tr>
        <tr>
            <td align="center"><keyboard>Mod4 + e</key>board</td>
            <td align="center">Launch nautilus</td>
        </tr>
        <tr>
            <td align="center"><keyboard>Mod4 + r</keyboard></td>
            <td align="center">Launch rofi</td>
        </tr>
        <tr>
            <td align="center"><keyboard>Alt + l</keyboard></td>
            <td align="center">Lock screen</td>
        </tr>
        <tr>
            <td align="center"><keyboard>Alt + o</keyboard></td>
            <td align="center">Launch obsidian</td>
        </tr>
    </table>
</details>