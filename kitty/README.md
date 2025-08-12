# Kitty Terminal Guide

## Keyboard Shortcuts

### Tabs

#### Creating Tabs
- **New Tab (with current directory)**: `Cmd + T`
- **Set Tab Title**: `Cmd + Alt + T`

#### Navigating Tabs
- **Next Tab**: `Cmd + Right Arrow`
- **Previous Tab**: `Cmd + Left Arrow`
- **Go to Tab N**: `Cmd + 1` through `Cmd + 9` (for tabs 1-9)
- **Move Tab Forward**: `Cmd + .`
- **Move Tab Backward**: `Cmd + ,`

#### Closing Tabs
- **Close Tab**: `Cmd + Q`

### Windows (Splits)

#### Creating Windows
- **New Window (with current directory)**: `Cmd + Enter`
- **New OS Window (with current directory)**: `Cmd + N`

#### Navigating Windows
- **Next Window**: `Cmd + ]`
- **Previous Window**: `Cmd + [`
- **Move to Window Above**: `Ctrl + K`
- **Move to Window Below**: `Ctrl + J`
- **Move to Window Left**: `Ctrl + H`
- **Move to Window Right**: `Ctrl + L`
- **Move Window Forward**: `Cmd + F`
- **Move Window Backward**: `Cmd + B`
- **Move Window to Top**: `Cmd + \``

#### Window Management
- **Start Resizing Window**: `Cmd + R`
- **Close Window**: `Cmd + W`

### Layout Management
- **Next Layout**: `Cmd + L`
- **Toggle Stack Layout**: `Cmd + Z`

### Font Sizes
- **Increase Font Size**: `Cmd + =`
- **Decrease Font Size**: `Cmd + -`
- **Reset Font Size**: `Cmd + 0`

### Clipboard
- **Copy**: `Cmd + C`
- **Paste**: `Cmd + V`
- **Paste from Selection**: `Cmd + S` or `Shift + Insert`

### Scrolling
- **Scroll Line Up**: `Cmd + K`
- **Scroll Line Down**: `Cmd + J`
- **Scroll Page Up**: `Cmd + Page Up`
- **Scroll Page Down**: `Cmd + Page Down`
- **Scroll to Top**: `Cmd + Home`
- **Scroll to Bottom**: `Cmd + End`
- **Show Scrollback**: `Cmd + H`

### Miscellaneous
- **Toggle Fullscreen**: `Cmd + F11`
- **Toggle Maximized**: `Cmd + F10`
- **Unicode Input**: `Cmd + U`
- **Edit Config File**: `Cmd + F2`
- **Kitty Shell**: `Cmd + Escape`
- **Increase Background Opacity**: `Cmd + A` then `M`
- **Decrease Background Opacity**: `Cmd + A` then `L`
- **Set Background Opacity to 100%**: `Cmd + A` then `1`
- **Reset Background Opacity to Default**: `Cmd + A` then `D`
- **Clear Terminal**: `Cmd + Delete`

## Custom Configuration

The keyboard shortcuts can be customized in the `kitty.conf` file. To add or modify shortcuts, use the `map` directive:

```conf
# Example custom mappings
map cmd+shift+n new_window_with_cwd
map cmd+shift+t new_tab_with_cwd
```

## Tips

1. **Tab Bar**: The tab bar appears at the top when you have multiple tabs open
2. **Window Borders**: Active windows have a highlighted border (color configurable in kitty.conf)
3. **Layouts**: Kitty supports multiple window layouts (tall, fat, grid, horizontal, vertical, stack)
4. **Sessions**: You can save and restore sessions with `Cmd + Shift + S` (save) and `Cmd + Shift + R` (restore)

## Configuration File Location

After running stow, your Kitty configuration will be at: `~/.config/kitty/kitty.conf`