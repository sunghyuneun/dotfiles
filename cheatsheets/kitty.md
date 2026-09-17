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

