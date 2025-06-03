## How to make it so the hyprlock will work for sure:
run: `sudo nvim /etc/systemd/system/getty@tty1.service.d/override.conf`
and place the following in the file:
`[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin horikita --noclear %I $TERM`

> [!NOTE]
> do not forget to change `user_name` with your actual username
