# Christian's dotfiles

A comprehensive macOS development environment configuration managed with GNU Stow.

## 🚀 Quick Start

```bash
git clone git@github.com:barrachri/dotfiles.git
cd dotfiles
./run.sh
```

This will:
- Install XCode Command Line Tools
- Install Homebrew and all packages from Brewfile
- Configure Zsh with Starship prompt
- Set up Kitty terminal emulator
- Apply macOS system preferences
- Create symbolic links for all configurations

## 📦 What's Included

### Development Tools
- **Languages**: Python, Node.js, Go, Rust, Ruby
- **Containers**: Docker, Kubernetes (kubectl, k9s, helm)
- **Cloud CLIs**: AWS, Azure, GCP
- **Databases**: PostgreSQL, Redis
- **Version Control**: Git with enhanced configuration

### Applications
- **Terminal**: Kitty with Tokyo Night theme
- **Shell**: Zsh with Starship prompt
- **Editor**: VSCode with curated extensions
- **Productivity**: 1Password, Rectangle, Alfred
- **Development**: TablePlus, Insomnia, DevToys

## 🛠 Configuration Management

This repository uses [GNU Stow](https://www.gnu.org/software/stow/) for symlink management:

```bash
# Link individual configurations
stow editor         # Editor configuration
stow git            # Git configuration  
stow zsh            # Zsh configuration
stow -d kitty/ -t ~/.config/kitty/ .     # Kitty terminal
stow -d starship/ -t ~/.config/ .        # Starship prompt
```

## 📁 Repository Structure

```
.
├── Brewfile            # Homebrew packages and casks
├── run.sh              # Main setup script
├── mac/
│   └── configuration.sh # macOS system preferences
├── editor/             # Editor configuration
├── git/                # Git configuration
├── zsh/                # Zsh shell configuration
├── kitty/              # Kitty terminal configuration
├── starship/           # Starship prompt configuration
└── ssh/
    └── config.example  # SSH configuration template
```

## 🔧 Manual Tasks

After running the setup script:

1. **SSH Keys**: Generate or copy your SSH keys
2. **1Password**: Sign in and configure
3. **VSCode**: Sign in to sync settings
4. **Git Credentials**: Configure your Git user:
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "your.email@example.com"
   ```

## 🔄 Maintenance

### Update Homebrew packages
```bash
brew update && brew upgrade
```

### Save current Homebrew state
```bash
brew bundle dump --force
```

### Update macOS preferences
```bash
source mac/configuration.sh
```

## 📝 Notes

- Default shell is set to Zsh
- Starship prompt requires a [Nerd Font](https://www.nerdfonts.com/)
- macOS configuration includes security hardening and privacy settings
- All configurations are version controlled and can be easily modified

## 📄 License

MIT

