#!/usr/bin/env bash

# Stow Setup Script for Dotfiles
# This script creates symlinks for all configuration files using GNU Stow

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_info() {
    echo -e "${YELLOW}→${NC} $1"
}

# Check if stow is installed
if ! command -v stow &> /dev/null; then
    print_error "GNU Stow is not installed. Please run './run.sh' first or install with 'brew install stow'"
    exit 1
fi

print_info "Setting up dotfiles with GNU Stow..."

# Stow regular directories
STOW_DIRS=(
    "editor"
    "git"
    "zsh"
)

for dir in "${STOW_DIRS[@]}"; do
    if [ -d "$dir" ]; then
        print_info "Linking $dir configuration..."
        stow "$dir"
        print_status "$dir configuration linked"
    else
        print_error "Directory $dir not found, skipping..."
    fi
done

# Special case for kitty (needs to be linked to ~/.config/kitty/)
if [ -d "kitty" ]; then
    print_info "Linking kitty configuration..."
    mkdir -p ~/.config/kitty
    stow -d kitty/ -t ~/.config/kitty/ .
    print_status "kitty configuration linked"
else
    print_error "Directory kitty not found, skipping..."
fi

# Special case for starship (needs to be linked to ~/.config/)
if [ -d "starship" ]; then
    print_info "Linking starship configuration..."
    mkdir -p ~/.config
    stow -d starship/ -t ~/.config/ .
    print_status "starship configuration linked"
else
    print_error "Directory starship not found, skipping..."
fi

print_status "All configurations have been linked successfully!"
print_info "To unlink configurations, use 'stow -D <directory>'"