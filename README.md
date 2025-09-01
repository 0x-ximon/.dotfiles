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

|       | Name     | Shortcut  |                                   Command |
| :---: | :------- | :-------: | ----------------------------------------: |
|   1   | Terminal | Super + T |                          `gnome-terminal` |
|   2   | Emacs    | Super + E |               `emacsclient -c -a "emacs"` |
|   3   | Firefox  | Super + F |                                 `firefox` |
|   4   | Neovim   | Super + N |                                  `neovim` |
|   5   | Tmux     | Super + X | `gnome-terminal -- bash -c "tmux attach"` |
|   6   | VS Code  | Super + C |                                    `code` |
