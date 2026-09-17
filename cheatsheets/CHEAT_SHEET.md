# Tmux

A comprehensive reference for **tmux** (Terminal Multiplexer), focusing on session management, pane/window navigation, configuration, and integration with terminal applications.

---

## 1. Core Prefix & Essential Commands

By default, tmux uses `Ctrl + b` as its primary **Prefix**. Press the prefix key combination first, release it, and then press the desired command key.

| Command / Shortcut | Function / Description |
| :--- | :--- |
| `Prefix + ?` | List all keybindings in active session. |
| `Prefix + :` | Open the tmux command prompt. |
| `Prefix + d` | Detach from the current tmux session (leaves processes running). |
| `Prefix + r` | Force reload of configuration file (when mapped in `.tmux.conf`). |

---

## 2. Session Management

Manage background terminal sessions from your shell or directly inside tmux.

### Shell Commands
```fish
# Start a new named session
tmux new -s dev

# List all active sessions
tmux ls

# Attach to the most recent session
tmux a

# Attach to a specific named session
tmux attach -t dev

# Kill a specific session
tmux kill-session -t dev

# Kill all active tmux sessions
tmux kill-server
```

### In-Session Shortcuts
| Shortcut | Function / Description |
| :--- | :--- |
| `Prefix + s` | Interactively select/switch between active sessions. |
| `Prefix + $` | Rename current session. |
| `Prefix + ( / )` | Switch to previous / next session. |

---

## 3. Window Control (Tabs)

Windows act like tabs within a single tmux session.

| Shortcut | Function / Description |
| :--- | :--- |
| `Prefix + c` | Create a new window. |
| `Prefix + ,` | Rename the current window. |
| `Prefix + &` | Kill the current window. |
| `Prefix + n` | Focus next window. |
| `Prefix + p` | Focus previous window. |
| `Prefix + 0` to `9` | Jump directly to window number 0 through 9. |
| `Prefix + w` | Interactively list and select windows across all sessions. |
| `Prefix + .` | Move/re-number current window. |

---

## 4. Pane Control (Splits & Tiling)

Panes split a single window into multiple tiled terminals.

| Shortcut | Function / Description |
| :--- | :--- |
| `Prefix + %` | Split current pane vertically (left / right). |
| `Prefix + "` | Split current pane horizontally (top / bottom). |
| `Prefix + x` | Close / kill current pane. |
| `Prefix + Arrow Keys` | Move focus to adjacent pane in indicated direction. |
| `Prefix + o` | Rotate focus through all open panes. |
| `Prefix + q` | Display pane numbers (press number to jump directly to pane). |
| `Prefix + z` | Toggle zoom (maximize current pane to full window and back). |
| `Prefix + {` / `}` | Swap current pane with previous / next pane. |
| `Prefix + Space` | Cycle through built-in pane layouts (even-horizontal, main-vertical, etc.). |
| `Prefix + Alt + Arrow Keys` | Resize current pane in 5-cell increments. |

---

## 5. Copy Mode & Scrollback Search

tmux uses a dedicated buffer mode for scrolling back and copying text.

| Shortcut | Function / Description |
| :--- | :--- |
| `Prefix + [` | Enter Copy / Scrollback Mode. |
| `q` | Exit Copy Mode. |
| `Up / Down Arrows` or `PageUp / PageDown` | Scroll through buffer in Copy Mode. |
| `Ctrl + s` or `/` | Search forward in buffer. |
| `r` or `?` | Search backward in buffer. |
| `Space` | Start text selection (default keytables). |
| `Enter` | Copy selection to tmux clipboard buffer and exit. |
| `Prefix + ]` | Paste copied text from tmux buffer. |

---

## 6. Vi Copy Mode Configuration Snippet

For vim/neovim users, configure tmux to use `vi` movement keys (`h, j, k, l, v, y`) in Copy Mode by adding this to `~/.tmux.conf`:

```tmux
# Enable mouse support
set -g mouse on

# Use Vi keybindings in Copy Mode
set-window-option -g mode-keys vi

# Vi-style text selection and copying
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

# Remap split keys to more intuitive shortcuts
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"

# Easy configuration reload
bind r source-file ~/.tmux.conf \; display "tmux config reloaded!"
```

---

## 7. Useful Diagnostic Commands

| Command | Function / Description |
| :--- | :--- |
| `tmux info` | Output complete tmux environment details, options, and terminal caps. |
| `tmux show-options -g` | Show current global tmux options. |

# Kitty

A comprehensive reference for **Kitty Terminal**, compiled from custom keybindings, visual layout references, quick start guides, and troubleshooting notes.

---

## 1. Window & Pane Navigation Shortcuts

| Shortcut | Function / Description |
| :--- | :--- |
| `Alt + \` | Split window vertically. |
| `Alt + -` | Split window horizontally. |
| `Ctrl + Shift + Q` | Close focused window. |
| `Alt + H` | Navigate focus to the left window. |
| `Alt + J` | Navigate focus down. |
| `Alt + K` | Navigate focus up. |
| `Alt + L` | Navigate focus to the right window. |
| `Ctrl + 1` to `0` | Jump directly to window 1 through 10. |
| `Ctrl + Shift + Alt + Space` | Swap active window with adjacent window. |

---

## 2. Window Resizing & Layout Controls

| Shortcut | Function / Description |
| :--- | :--- |
| `Alt + Shift + K` | Make active window taller. |
| `Alt + Shift + J` | Make active window shorter. |
| `Alt + Shift + H` | Make active window wider. |
| `Alt + Shift + L` | Make active window narrower. |
| `Ctrl + Shift + E` | Reset all window sizes to equal split. |
| `Ctrl + Shift + R` | Interactive window resize mode. |
| `Ctrl + Shift + F` | Switch to next layout. |
| `Ctrl + Shift + D` | Switch to previous layout. |
| `Ctrl + Alt + Space` | Rotate windows in current layout. |
| `F11` | Toggle fullscreen mode for the active window. |

### Layout Direct Jump Shortcuts
* **Tall**: `Ctrl + Shift + Alt + T`
* **Stack**: `Ctrl + Shift + Alt + S`
* **Grid**: `Ctrl + Shift + Alt + G`

---

## 3. Tab Management

| Shortcut | Function / Description |
| :--- | :--- |
| `Ctrl + T` | Create a new tab. |
| `Ctrl + Shift + W` | Close active tab. |
| `Ctrl + Tab` | Switch to next tab. |
| `Ctrl + Shift + Tab` | Switch to previous tab. |
| `Alt + 1` to `9` | Jump directly to tab 1 through 9. |
| `Ctrl + Shift + PageUp` | Move active tab left. |
| `Ctrl + Shift + PageDown` | Move active tab right. |

---

## 4. Clipboard, Scrolling & Mouse Shortcuts

| Shortcut / Action | Function / Description |
| :--- | :--- |
| `Ctrl + Shift + C` | Copy selection to system clipboard. |
| `Ctrl + Shift + V` or `Shift + Insert` | Paste from system clipboard. |
| `Ctrl + Shift + Home` | Scroll to top of scrollback buffer. |
| `Ctrl + Shift + End` | Scroll to bottom of scrollback buffer. |
| `Ctrl + Alt + Home` | Scroll to previous shell prompt. |
| `Ctrl + Alt + End` | Scroll to next shell prompt. |
| `Ctrl + Shift + Delete` | Clear terminal screen. |
| `Click + Drag` | Select text. |
| `Double-click` | Select word. |
| `Triple-click` | Select line. |
| `Middle-click` | Paste selection. |
| `Ctrl + Shift + Drag` | Move/reposition window. |

---

## 5. Special Features & Utility Shortcuts

| Shortcut | Function / Description |
| :--- | :--- |
| `Ctrl + Shift + H` | Open current scrollback buffer directly inside Neovim. |
| `Ctrl + Shift + G` | View last command output in Pager. |
| `Ctrl + Shift + U` | Open URL hints/picker. |
| `Ctrl + Shift + B` | Toggle Broadcast mode (send keystrokes to ALL windows simultaneously). |
| `Ctrl + Alt + R` | Hot-reload `kitty.conf`. |
| `Ctrl + Shift + Alt + ,` | Open `kitty.conf` directly in your default editor. |
| `Ctrl + =` / `Ctrl + -` | Increase / Decrease font size. |
| `Cmd + 0` | Reset font size to default. |

---

## 6. Layout Types Reference

* **SPLITS**: Manual split control (user determines vertical/horizontal orientation).
* **TALL**: Main window on left (70%), stacked split windows on right (30%).
* **FAT**: Main window on top (70%), stacked split windows on bottom (30%).
* **STACK**: Fullscreen focus on current window; hides all other open splits.
* **GRID**: Auto-arranges open windows into equal grid blocks.
* **HORIZ**: Stacks windows in equal rows.
* **VERT**: Stacks windows in equal columns.

### Visual ASCII Diagrams

```text
TALL Layout               FAT Layout              GRID Layout
┌──────────────┬────┐    ┌──────────────────┐    ┌──────┬──────┐
│              │ 2  │    │        1         │    │  1   │  2   │
│      1       ├────┤    ├─────┬─────┬──────┤    ├──────┼──────┤
│              │ 3  │    │  2  │  3  │  4   │    │  3   │  4   │
└──────────────┴────┘    └─────┴─────┴──────┘    └──────┴──────┘
```

---

## 7. Workflow Recipes

### Development Environment Setup
1. `Ctrl + T` (Create new tab)
2. `Alt + \` (Split vertically)
3. `Ctrl + Shift + Alt + T` (Switch layout to **Tall**)
4. `Alt + H` (Focus left window)
5. Launch editor (`nvim`)

### Multi-Server Cluster Management
1. `Ctrl + Shift + Enter` x3 (Open 4 splits)
2. `Ctrl + Shift + Alt + G` (Set **Grid** layout)
3. Navigate between panes using `Alt + H/J/K/L`
4. Connect via SSH on each split
5. Press `Ctrl + Shift + B` to enable **Broadcast Mode** (commands send to all 4 servers simultaneously)

---

## 8. Pro Tips

* Jump directly to windows using `Ctrl + 1-9` instead of directional arrows for faster context switching.
* Use `Ctrl + Shift + R` for fine-grained interactive resizing.
* Use `Ctrl + Shift + E` to quickly re-balance all windows to equal proportions.
* Switch to **Stack** layout (`Ctrl + Shift + Alt + S`) for distraction-free editing without closing existing split terminals.
* Use `F11` to toggle OS-level fullscreen for focused tasks.

---

# Fish

A comprehensive reference for **Fish shell** (Friendly Interactive Shell), optimized for high-productivity terminal workflows, custom bindings, and Neovim/LazyVim integration.

---

## 1. Essential Navigation & Command Line Tricks

Fish provides intelligent autosuggestions based on command history and PATH contents.

| Shortcut / Action | Function / Description |
| :--- | :--- |
| `Right Arrow` or `Ctrl + F` | Accept the current autosuggestion (inline grey text). |
| `Alt + Right Arrow` | Accept only the **next word** of the autosuggestion. |
| `Up Arrow` / `Down Arrow` | Search history matching what you have already typed. |
| `Ctrl + L` | Clear screen while preserving the current prompt line. |
| `Ctrl + C` | Cancel current command / clear buffer. |
| `Ctrl + R` | Search command history with fuzzy finder (`fzf`). |

---

## 2. Variables & Environment Management

Fish uses explicit `set` scopes rather than standard `export VAR=val` syntax.

```fish
# Set a local variable (valid in current scope)
set name "Hyun"

# Set a global variable (valid for current session)
set -g EDITOR nvim

# Set an environment variable (exported to child processes)
set -gx GEMINI_API_KEY "your_api_key_here"

# Erase a variable
set -e GEMINI_API_KEY

# Universal variables (persist across shell restarts and sessions)
set -U fish_user_paths $HOME/.local/bin $fish_user_paths
```

### Adding Paths cleanly
Always prefer the built-in `fish_add_path` helper over manual array concatenation:

```fish
# Prepend path permanently to $PATH
fish_add_path ~/.local/bin

# Add multiple paths at once
fish_add_path /opt/nvim/bin /usr/local/bin
```

---

## 3. Directory Stack & Navigation Shortcuts

Fish natively tracks your directory history without needing `pushd` / `popd`.

| Command | Function / Description |
| :--- | :--- |
| `cd -` | Switch back to the previous working directory. |
| `dirh` | Display directory history stack. |
| `cdh` | Interactively select from directory history stack. |
| `prevd` / `nextd` | Move backward / forward through directory history. |
| `Alt + Left Arrow` | Move to previous directory in stack (`prevd`). |
| `Alt + Right Arrow` | Move to next directory in stack (`nextd`). |

---

## 4. Functions & Custom Aliases

In Fish, aliases are lightweight wrappers that automatically create Fish functions.

### Creating an Alias
```fish
alias lg="lazygit"
alias v="nvim"
alias ll="ls -la"
```

### Writing Custom Functions
Functions are stored in `~/.config/fish/functions/<name>.fish` for automatic lazy-loading.

```fish
# Example: Create a directory and immediately enter it
function mkcd
    mkdir -p $argv[1]
    and cd $argv[1]
end

# Example: Run Neovim with absolute path expansion
function nv
    nvim (realpath $argv[1])
end
```

### Saving Functions & Aliases Permanently
```fish
# Save a newly created function/alias to disk automatically
funcsave mkcd
funcsave lg
```

---

## 5. Fish Package Management (Fisher) & Plugins

Fisher is the standard, ultra-fast plugin manager for Fish.

### Essential Fisher Commands
| Command | Function / Description |
| :--- | :--- |
| `fisher install <repo>` | Install a plugin (e.g., `fisher install jorgebucaran/nvm.fish`). |
| `fisher list` | List all installed plugins. |
| `fisher update` | Update all installed plugins. |
| `fisher remove <repo>` | Remove a specific plugin. |

### Recommended Plugins
* **`jorgebucaran/nvm.fish`**: Pure Fish Node.js version manager.
* **`patrickf1/fzf.fish`**: Advanced fuzzy searching for history, files, and git commits.
* **`jethrokuan/z`**: Directory jumping based on frecency (frequency + recency).

---

## 6. Node.js Management (`nvm.fish`)

Commands when using `jorgebucaran/nvm.fish`:

```fish
# Install latest LTS Node version
nvm install lts

# Use a specific version
nvm use 20

# List installed versions
nvm list

# Set default Node version
set -g nvm_default_version lts
```

---

## 7. Useful Diagnostic & Inspection Commands

| Command | Function / Description |
| :--- | :--- |
| `type <command>` | Check if a command is a binary, function, alias, or builtin. |
| `command -q <cmd>` | Quietly check if a command exists (returns status 0/1). |
| `status is-interactive` | Test if running in an interactive session (useful in `config.fish`). |
| `fish_config` | Open web-based configuration GUI (colors, prompt, bindings). |
| `fish_key_reader` | Inspect exact escape sequences generated by keystrokes. |

---

## 8. Essential Keybindings & fzf Integration

If `fzf` is installed with `fzf.fish`, these default bindings become available:

| Keystroke | Action |
| :--- | :--- |
| `Ctrl + R` | Search command history with fuzzy finder (`fzf`). |
| `Ctrl + Alt + F` | Search files recursively in current directory. |
| `Ctrl + Alt + L` | Search variables and values. |
| `Alt + Shift + S` | Search Git status/modified files. |
