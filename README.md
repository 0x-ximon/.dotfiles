# .dotfiles

Feel free to clone the project and use on your machine (hopefully nothing breaks... hopefully)

To setup the configs on your machine, install GNU Stow:

```bash
sudo apt install stow
```

After which, you can then run the stow command to place them in their respective
folders in your $HOME directory.

```bash
stow nvim tmux zsh emacs
```

# Gnome Keyboard Shortcuts

| Name     | Shortcut  |                                                        Command |
| :------- | :-------: | -------------------------------------------------------------: |
| Terminal | Super + T |                                               `gnome-terminal` |
| Emacs    | Super + E |                                    `emacsclient -c -a "emacs"` |
| Firefox  | Super + F |                                                      `firefox` |
| Neovim   | Super + N |                                           `neovim --maximized` |
| VS Code  | Super + C |                                                         `code` |
| Zellij   | Super + Z | `gnome-terminal --maximize -- bash -c "zellij attach -c Home"` |
