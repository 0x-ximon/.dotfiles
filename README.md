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
|  2  | Android Studio | Super + A |                           `studio` |
|  3  | Emacs          | Super + M |        `emacsclient -c -a "emacs"` |
|  4  | IntelliJ       | Super + I |                             `idea` |
|  5  | Neovim         | Super + V | `neovide -- --cmd "cd ~/Projects"` |
|  6  | Notion         | Super + N |               `notion-snap-reborn` |
|  7  | Obsidian       | Super + O |                         `obsidian` |
|  8  | Tick Tick      | Super + K |                         `ticktick` |
|  9  | Tmux           | Super + X | `alacritty -e tmux attach -t Home` |
| 10  | VS Code        | Super + C |                             `code` |
