# .dotfiles

Feel free to clone the project and use on your machine (hopefully nothing breaks... hopefully)

There are configs for

- TMUX
- Neovim
- ZSH
- Emacs
- VS Code
- Clang

To setup the configs on your machine, install GNU Stow:

```bash
sudo apt install stow
```

After which, you can then run the stow command to place them in their respective
folders in your $HOME directory.

```bash
stow nvim tmux zsh emacs vscode clang
```

# Gnome Keyboard Shortcuts

|     | Name           | Shortcut  |                            Command |
| :-: | :------------- | :-------: | ---------------------------------: |
|  1  | Alacritty      | Super + T |                        `alacritty` |
|  2  | Android Studio | Super + S |                           `studio` |
|  3  | ClickUp        | Super + U |                          `clickup` |
|  4  | Emacs          | Super + M |        `emacsclient -c -a "emacs"` |
|  5  | FireFox Dev    | Super + F |               `firefox-devedition` |
|  6  | IntelliJ       | Super + I |                             `idea` |
|  7  | Nautilus       | Super + E |                         `nautilus` |
|  8  | Notion         | Super + N |               `notion-snap-reborn` |
|  9  | Obsidian       | Super + B |                         `obsidian` |
| 10  | Postman        | Super + A |                          `postman` |
| 11  | Tick Tick      | Super + K |                         `ticktick` |
| 12  | Tmux           | Super + X |         `alacritty -e tmux attach` |
| 13  | Vim            | Super + V | `neovide -- --cmd "cd ~/Projects"` |
| 14  | VS Code        | Super + C |                             `code` |
