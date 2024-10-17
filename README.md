# Fresh-OS

Files to set up my PCs when I reinstall Windows or whatever.

## Quickstart

### General Quickstart for WSL

If you've already got a Windows install with SSH and you're reinstalling WSL stuff, great.  If not, you'll need to do the appropriate SSH stuff to get github to work.  This assumes you have github access.

```shell
cp -r /mnt/c/Users/james/.ssh ~  # your use name.
chmod 600 ~/.ssh/id_rsa

# Install dotfile repo.  Skip if you aren't me.
git init
git checkout -b main
git remote add origin git@github.com:jsal13/dotfiles
git pull origin main

# Get Fresh-os, do installs.
git clone ssh://git@github.com/jsal13/fresh-os
cd fresh-os/ubuntu2204
sudo ./pre-init-sudo.sh
./init.sh
```
