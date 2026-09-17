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

