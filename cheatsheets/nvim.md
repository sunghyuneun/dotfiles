# LazyVim

A comprehensive reference for **LazyVim** (Neovim distribution built on `lazy.nvim`), focusing on core keymaps, file navigation, buffer management, LSP/coding actions, Git integration, and terminal workflows.

---

## 1. General & Leader Keys

In LazyVim, the default `<leader>` key is **`Space`** and the local leader is **`\`**.

| Shortcut | Action / Description |
| :--- | :--- |
| `<Space>` | Leader key (opens `which-key` menu showing available shortcuts). |
| `<Space> :` | Command palette / search command history (via Snacks / Telescope). |
| `<Space> e` / `<Space> E` | Toggle file explorer tree (Snacks / Neo-tree). |
| `<Space> fn` | Create a new file. |
| `<Space> qs` | Restore last session (`persistence.nvim`). |
| `<Space> ql` | Restore last session for current directory. |
| `<Space> qd` | Don't save current session on exit. |
| `<Space> qq` | Quit LazyVim / close all buffers. |
| `<Space> l` | Open Lazy plugin manager (`lazy.nvim`). |

---

## 2. File Finding & Searching (Picker / Telescope / Snacks)

Search through files, text contents, and buffer history across your project.

| Shortcut | Action / Description |
| :--- | :--- |
| `<Space> <Space>` | Find files in project root directory (`fd`). |
| `<Space> /` | Live grep text across project files (`ripgrep`). |
| `<Space> f f` | Find files (current working directory). |
| `<Space> f r` | Find recent files (`recent`). |
| `<Space> f b` | Find / switch open buffers. |
| `<Space> s g` | Grep text across project files. |
| `<Space> s w` | Search word under cursor across project files. |
| `<Space> s h` | Search Neovim help tags and documentation. |
| `<Space> s k` | Search active keymaps (`which-key`). |
| `<Space> s c` | Search Neovim command history. |

---

## 3. Buffer & Window Management

Efficiently control open buffers (tabs at top) and window splits.

| Shortcut | Action / Description |
| :--- | :--- |
| `H` | Switch to previous buffer (left). |
| `L` | Switch to next buffer (right). |
| `<Space> b d` or `<leader> bd` | Delete / close current buffer without breaking splits. |
| `<Space> b o` | Close all other buffers except active one. |
| `<Space> b p` | Toggle buffer pin state. |
| `Ctrl + h` / `j` / `k` / `l` | Navigate focus between window splits (left, down, up, right). |
| `<Space> w s` or `<Space> -` | Split window horizontally. |
| `<Space> w v` or `<Space> |` | Split window vertically. |
| `<Space> w d` / `<Space> w c` | Delete / close current window split. |
| `<Space> w m` | Toggle window zoom / toggle maximize split. |

---

## 4. LSP (Language Server Protocol) & Code Intelligence

Smart code navigation, diagnostic inspection, and refactoring shortcuts.

| Shortcut | Action / Description |
| :--- | :--- |
| `g d` | Go to definition of symbol under cursor. |
| `g r` | Find all references of symbol under cursor. |
| `g I` | Go to implementation. |
| `g T` | Go to type definition. |
| `K` | Hover documentation (press twice to focus hover window). |
| `<Space> c a` | Trigger code actions / quick fixes. |
| `<Space> c r` | Rename symbol under cursor project-wide. |
| `<Space> c f` | Format active buffer (via `conform.nvim` / LSP). |
| `<Space> c d` or `gl` | Open line diagnostic float (error / warning details). |
| `] d` / `[ d` | Jump to next / previous diagnostic error/warning. |
| `<Space> x x` | Toggle diagnostics panel (`trouble.nvim`). |
| `<Space> x X` | Toggle buffer diagnostics panel (`trouble.nvim`). |

---

## 5. Git Integration (LazyGit & Gitsigns)

In-editor Git operations powered by `lazygit` and `gitsigns.nvim`.

| Shortcut | Action / Description |
| :--- | :--- |
| `<Space> g g` | Open **LazyGit** floating terminal window. |
| `<Space> g b` | Toggle inline Git blame for current line. |
| `<Space> g B` | Open full Git blame view for current file. |
| `] h` / `[ h` | Jump to next / previous Git change hunk. |
| `<Space> g h s` | Stage change hunk under cursor. |
| `<Space> g h r` | Reset / undo change hunk under cursor. |
| `<Space> g h p` | Preview change hunk float. |
| `<Space> g d` | Diff view against Git HEAD. |

---

## 6. Terminal & Toggle Features

Manage built-in terminal overlays and toggle interface options on the fly.

| Shortcut | Action / Description |
| :--- | :--- |
| `<Space> f T` or `<Space> f t` | Toggle floating terminal window. |
| `Esc Esc` (in terminal mode) | Exit terminal editing mode to normal mode. |
| `<Space> u w` | Toggle line wrapping (`wrap`). |
| `<Space> u n` | Toggle line numbers (`number` / `relativenumber`). |
| `<Space> u s` | Toggle spell checking (`spell`). |
| `<Space> u c` | Toggle inline colorizer / conceal settings. |
| `<Space> u d` | Toggle dark / light background theme. |

---

## 7. Useful Diagnostic & Management Commands

| Command | Action / Description |
| :--- | :--- |
| `:Lazy` | Open plugin manager to update, clean, or inspect plugins. |
| `:LazyHealth` | Run Neovim / LazyVim health checks and system requirements. |
| `:LspInfo` | View attached LSP servers and active buffer configurations. |
| `:ConformInfo` | View active auto-formatters for current filetype. |
| `:Mason` | Open package manager for LSP servers, DAP debuggers, and linters. |
| `:pwd` | Display current working directory path. |
