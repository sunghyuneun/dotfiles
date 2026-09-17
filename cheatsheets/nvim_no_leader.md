# LazyVim (Non-Leader Keymaps)

A comprehensive, prioritized guide to navigating and editing in LazyVim (and base Neovim) without touching the `<leader>` key. Categories are ordered from the most fundamental, high-frequency actions to more contextual development workflows.

---

## 1. Core Movement & Navigation (Base Neovim)
The absolute fundamentals of moving around a file. These are native to Neovim and inherited by LazyVim.

| Shortcut | Mode | Action / Description |
| :--- | :--- | :--- |
| `h` / `j` / `k` / `l` | Normal / Visual | Move Left / Down / Up / Right. |
| `w` / `b` | Normal | Move forward / backward by one word. |
| `e` | Normal | Move to the end of the current word. |
| `0` (zero) / `^` / `$` | Normal | Move to start of line / first non-blank character / end of line. |
| `gg` / `G` | Normal | Jump to the very top / very bottom of the file. |
| `Ctrl + d` / `Ctrl + u` | Normal | Jump down / up half a page. |
| `Ctrl + f` / `Ctrl + b` | Normal | Jump forward / backward a full page. |
| `f` + `char` / `F` + `char` | Normal | Jump forward / backward to the exact character on the current line. |
| `%` | Normal | Jump to the matching bracket/parenthesis. |

---

## 2. Basic Editing & Text Manipulation (Base Neovim)
Essential commands for modifying text without using a mouse or arrow keys.

| Shortcut | Mode | Action / Description |
| :--- | :--- | :--- |
| `i` / `I` | Normal | Enter Insert mode at cursor / at the beginning of the line. |
| `a` / `A` | Normal | Enter Insert mode after cursor / at the end of the line. |
| `o` / `O` | Normal | Open a new line below / above the current line and enter Insert mode. |
| `x` | Normal | Delete the character under the cursor. |
| `d` + `motion` (e.g., `dw`) | Normal | Delete text based on the motion (e.g., delete word). |
| `dd` | Normal | Delete the entire current line. |
| `c` + `motion` (e.g., `cw`) | Normal | Change (delete and enter Insert mode) based on the motion. |
| `y` + `motion` (e.g., `yw`) | Normal | Yank (copy) text based on the motion. |
| `yy` | Normal | Yank (copy) the entire current line. |
| `p` / `P` | Normal | Paste copied/deleted text after / before the cursor. |
| `u` / `Ctrl + r` | Normal | Undo / Redo the last change. |

---

## 3. Window & Split Navigation (LazyVim Enhancements)
LazyVim maps standard split navigation to `Ctrl` + `hjkl` for rapid window hopping.

| Shortcut | Mode | Action / Description |
| :--- | :--- | :--- |
| `Ctrl + h` | Normal / Terminal | Move focus to left split window. |
| `Ctrl + j` | Normal / Terminal | Move focus to lower split window. |
| `Ctrl + k` | Normal / Terminal | Move focus to upper split window. |
| `Ctrl + l` | Normal / Terminal | Move focus to right split window. |
| `Ctrl + Up` | Normal | Resize window split (grow vertically). |
| `Ctrl + Down` | Normal | Resize window split (shrink vertically). |
| `Ctrl + Left` | Normal | Resize window split (shrink horizontally). |
| `Ctrl + Right` | Normal | Resize window split (grow horizontally). |

---

## 4. Buffer & Tab Management (LazyVim Defaults)
Move between your open files (buffers) instantly without touching the explorer.

| Shortcut | Mode | Action / Description |
| :--- | :--- | :--- |
| `H` | Normal | Switch to previous buffer tab (left). |
| `L` | Normal | Switch to next buffer tab (right). |
| `[ b` / `] b` | Normal | Previous / Next buffer (alternative map). |

---

## 5. Line Moving & Indentation (LazyVim Defaults)
Quickly reorganize blocks of code and fix formatting.

| Shortcut | Mode | Action / Description |
| :--- | :--- | :--- |
| `Alt + j` (`<A-j>`) | Normal / Insert / Visual | Move current line/selection down 1 row (auto-indents). |
| `Alt + k` (`<A-k>`) | Normal / Insert / Visual | Move current line/selection up 1 row (auto-indents). |
| `<` | Visual | Shift selection left (outdent) and keep selection active. |
| `>` | Visual | Shift selection right (indent) and keep selection active. |
| `==` | Normal | Auto-indent current line. |

---

## 6. LSP, Diagnostics & Code Intelligence (LazyVim Defaults)
Interact with your language servers directly to navigate your codebase.

| Shortcut | Mode | Action / Description |
| :--- | :--- | :--- |
| `K` | Normal | Display hover documentation (press again to enter window). |
| `g d` | Normal | Jump to definition of symbol under cursor. |
| `g r` | Normal | Jump to references of symbol under cursor. |
| `g I` | Normal | Jump to implementation. |
| `g T` | Normal | Jump to type definition. |
| `g D` | Normal | Jump to declaration. |
| `g l` | Normal | Open floating diagnostic window for current line (errors/warnings). |
| `] d` / `[ d` | Normal | Jump to next / previous diagnostic issue. |
| `] e` / `[ e` | Normal | Jump to next / previous error specifically. |
| `] w` / `[ w` | Normal | Jump to next / previous warning specifically. |

---

## 7. Commenting (Neovim 0.10+ / Mini.comment)
Toggle comments rapidly without needing a leader key.

| Shortcut | Mode | Action / Description |
| :--- | :--- | :--- |
| `g c c` | Normal | Toggle line comment on current line. |
| `g c` | Visual | Toggle comment on selected text block. |
| `g b c` | Normal | Toggle block comment on current line. |
| `g c` + `motion` | Normal | Toggle comment for the motion (e.g., `gc2j` comments 3 lines). |
| `g o` / `g O` | Normal | Add a commented empty line below / above the current line. |

---

## 8. Git Navigation (Gitsigns)
Jump between unstaged changes within the current file.

| Shortcut | Mode | Action / Description |
| :--- | :--- | :--- |
| `] h` | Normal | Jump to next Git change hunk. |
| `[ h` | Normal | Jump to previous Git change hunk. |
| `] H` | Normal | Jump to last Git change hunk in the file. |
| `[ H` | Normal | Jump to first Git change hunk in the file. |

---

## 9. Folding
Manage code blocks to keep your view clean.

| Shortcut | Mode | Action / Description |
| :--- | :--- | :--- |
| `z a` | Normal | Toggle fold under cursor. |
| `z c` / `z o` | Normal | Close / Open fold under cursor. |
| `z M` | Normal | Close all folds in the file. |
| `z R` | Normal | Open all folds in the file. |

---

## 10. Terminal Mode Escaping
Essential for users who use LazyVim's integrated terminals.

| Shortcut | Mode | Action / Description |
| :--- | :--- | :--- |
| `Esc` `Esc` | Terminal | Exit Terminal insert mode and return to Normal mode. |

