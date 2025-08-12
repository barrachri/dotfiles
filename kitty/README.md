# Kitty Terminal Guide

## Keyboard Shortcuts

### Tabs

#### Creating Tabs
- **New Tab**: `Cmd + T`
- **New Tab with Same Directory**: `Cmd + Alt + T`

#### Navigating Tabs
- **Next Tab**: `Cmd + Shift + ]` or `Ctrl + Tab`
- **Previous Tab**: `Cmd + Shift + [` or `Ctrl + Shift + Tab`
- **Go to Tab N**: `Cmd + 1` through `Cmd + 9` (for tabs 1-9)
- **Go to Last Tab**: `Cmd + 9` (if you have more than 9 tabs)
- **Move Tab Forward**: `Cmd + Shift + .`
- **Move Tab Backward**: `Cmd + Shift + ,`

#### Closing Tabs
- **Close Tab**: `Cmd + W`

### Windows (Splits)

#### Creating Windows
- **New Window (Horizontal Split)**: `Cmd + Enter`
- **New Window (Vertical Split)**: `Cmd + Shift + Enter`
- **New OS Window**: `Cmd + N`

#### Navigating Windows
- **Next Window**: `Cmd + ]`
- **Previous Window**: `Cmd + [`
- **Move to Window Above**: `Cmd + K` then `↑`
- **Move to Window Below**: `Cmd + K` then `↓`
- **Move to Window Left**: `Cmd + K` then `←`
- **Move to Window Right**: `Cmd + K` then `→`

#### Window Layout
- **Next Layout**: `Cmd + Shift + L`
- **Toggle Fullscreen for Active Window**: `Cmd + Shift + F`
- **Resize Window**: Hold `Cmd + R` then use arrow keys

#### Closing Windows
- **Close Window**: `Cmd + Shift + W`

### Other Useful Shortcuts

- **Increase Font Size**: `Cmd + +`
- **Decrease Font Size**: `Cmd + -`
- **Reset Font Size**: `Cmd + 0`
- **Copy**: `Cmd + C`
- **Paste**: `Cmd + V`
- **Clear Terminal**: `Cmd + K` (or `Ctrl + L`)
- **Scroll Up**: `Cmd + ↑` or `Page Up`
- **Scroll Down**: `Cmd + ↓` or `Page Down`
- **Scroll to Top**: `Cmd + Home`
- **Scroll to Bottom**: `Cmd + End`

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