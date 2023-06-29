# wsl-enable-systemd - enable systemd on WSL2

Just like what it says. Will guarantee systemd on WSL2 on every profile open. Previous versions of this package did much
fancier things so you likely do not need to use this any more and can simply add the following lines to your
`/etc/wsl2.conf`

```ini
[boot]
systemd=true
```

## /etc/wsl.d

This package also sets up a new directory `/etc/wsl.d` - any script in this directory will be run on initial boot of the WSL distro, rather than the single command that WSL2 allows by default.