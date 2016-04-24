# Dotfiles

### Stow

Install: `stow <package>`  
Remove:  `stow -D <package>`

### Wallpaper

Enable: `systemctl --user enable ~/dotfiles/wallpapers/.config/systemd/user/change-wallpaper.service`.  
Change now: `~/.change-wallpaper.sh` or `systemctl --user start change-wallpaper.service`

