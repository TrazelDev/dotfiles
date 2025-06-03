## How to make it so the hyprlock will work for sure:
run: `sudo nvim /etc/systemd/system/getty@tty1.service.d/override.conf`


### Place the following in the file:
```ini
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin user_name --noclear %I $TERM
# do not forget to change `user_name` with your actual username !!!
