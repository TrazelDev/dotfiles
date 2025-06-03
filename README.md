## The font:
I use `ttf-cascadia-code-nerd`, to Install on arch run:
```bash
sudo pacman -S ttf-cascadia-code-nerd
```

## Keyboard remaps:
Open the file `/etc/keyd/default.conf` and paste the following:
```ini
[ids]
*

[main]
leftalt = leftcontrol
capslock = escape

# Remapping the copilot key to backspace:
leftshift+leftmeta = backspace
```
then run: `sudo systemctl restart keyd`

## GTK theme:
Install: `nwg-look` & `atppuccin-gtk-theme-moch`.

Then run nwg-look and select the theme you want.
