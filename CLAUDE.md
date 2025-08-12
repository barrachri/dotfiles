# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a macOS dotfiles repository managed with GNU Stow for symlink management. The repository configures development environment settings including Homebrew packages, shell configuration (Zsh with Starship prompt), terminal emulator (Kitty), Git settings, and macOS system preferences.

## Key Commands

### Initial Setup
```bash
./run.sh  # Main setup script - installs XCode tools, Homebrew, packages, and applies configurations
```

### Homebrew Management
```bash
brew bundle         # Install all packages from Brewfile
brew bundle dump    # Update Brewfile with currently installed packages
```

### Configuration Management
The repository uses GNU Stow for symlink management:
```bash
stow editor         # Link editor configuration
stow git            # Link git configuration
stow zsh            # Link zsh configuration
stow -d kitty/ -t ~/.config/kitty/ .     # Link kitty configuration
stow -d starship/ -t ~/.config/ .        # Link starship configuration
```

### macOS Configuration
```bash
source mac/configuration.sh  # Apply macOS system preferences (runs at end of setup)
```

## Repository Structure

- **Brewfile**: Homebrew bundle configuration including CLI tools, casks, and VSCode extensions
- **run.sh**: Main setup script that orchestrates the entire installation process
- **mac/configuration.sh**: macOS system preferences and defaults configuration
- **editor/**: Editor configuration (.editorconfig)
- **git/**: Git configuration (.gitconfig, .gitignore_global)
- **zsh/**: Zsh configuration (.zshrc, .zshenv)
- **kitty/**: Kitty terminal configuration (kitty.conf)
- **starship/**: Starship prompt configuration (starship.toml)
- **ssh/config.example**: SSH configuration template

## Important Notes

- The setup script uses Zsh as the default shell
- Starship is used for the shell prompt with custom configuration
- Homebrew packages include development tools for Python, Node.js, Go, Rust, Docker, Kubernetes, and cloud CLIs (AWS, Azure, GCP)
- The repository includes VSCode extensions configuration in the Brewfile
- Kitty is configured as the terminal emulator with Tokyo Night color scheme
- macOS configuration script sets various system preferences including Finder, Dock, Safari, and security settings