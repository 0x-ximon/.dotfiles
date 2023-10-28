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
