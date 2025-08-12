# Brewfile Differences

## 🗑️ **Packages to REMOVE** (in current but not in clean):

### Build Dependencies & Libraries (auto-installed)
- `libtiff`, `little-cms2`, `webp`, `jpeg`, `openjpeg`, `leptonica` - Image libraries
- `libevent`, `unbound`, `gnutls` - Network libraries  
- `libmagic`, `libpq`, `portaudio` - Various libraries
- `krb5` - Kerberos (usually a dependency)
- `openssl@1.1` - Outdated (macOS has v3)
- `gperf` - Build tool

### Python (replaced by uv)
- `pyenv` - Python version manager (uv does this)
- `poetry` - Package manager (uv does this)
- `virtualenv` - Virtual environments (uv does this)
- `python@3.10`, `python@3.11` - Specific versions (uv manages versions)

### Go tools (IDE handles these)
- `gofumpt` - Go formatter
- `goimports` - Import management

### Redundant Docker/Terminals/Editors
- `docker-compose` - Included in OrbStack
- `docker-desktop` - Replaced by OrbStack
- `iterm2`, `warp`, `ghostty` - Extra terminals (keeping kitty)
- `vscodium` - Duplicate of VS Code
- `ungoogled-chromium` - You have Firefox

### Specialized tools
- `theharvester` - OSINT tool
- `balena-cli` - IoT deployment  
- `minicom` - Serial communication
- `qemu` - VM emulation
- `docutils` - Python doc utilities

### Third-party taps
- `charmbracelet/tap/crush` - Image optimizer
- `peak/tap/s5cmd` - S3 tool
- `sst/tap/opencode` - SST framework

## ✅ **Packages KEPT** (in both):

### Modern CLI tools
✓ `bat`, `eza`, `fd`, `ripgrep`, `procs`, `dust`, `duf`, `fzf`, `htop`, `tree`

### Dev essentials  
✓ `git`, `git-lfs`, `gh`, `stow`, `direnv`, `starship`, `watchexec`, `just`

### Languages
✓ `node`, `pnpm`, `deno`, `go`, `rust`, `uv`

### Cloud/Infrastructure
✓ `awscli`, `azure-cli`, `doctl`, `terraform`, `helm`, `k3d`, `kubectl` tools

### Build tools
✓ `cmake`, `ninja`, `ccache`, `llvm`

### Utilities
✓ `gnupg`, `pinentry-mac`, `wget`, `ollama`, `ffmpeg`

### Applications
✓ `kitty`, `visual-studio-code`, `orbstack`, `bitwarden`, `firefox`, `slack`, `insomnia`, `vlc`

### Optional (in clean but you can remove)
? `tesseract` - OCR (remove if not using)

## 📊 **Summary**:
- **Removing**: 38 packages
- **Keeping**: 50+ packages
- **Space saved**: ~5-10GB
- **Main benefits**: No Python conflicts, no Docker conflicts, cleaner PATH