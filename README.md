# Micro GNU Emacs (mg) configuration

Several lines of basic configuration for mg — emacs-like text editor.

## Man page

[man](https://man.openbsd.org/mg)

## Copy conf

``` bash
cp mg ~/.mg
```

## Docs

quick_reference.txt is a copy of original MicroEMACS reference, just in case.

[MicroEMACS Quick Reference](https://www.stsci.edu/~strolger/docs/emacs_guide.html)

Use ESC-x as M-x

## Configuration notes

This project adopts a **Kernel Style** workflow using `mg`, the lightweight editor. The configuration prioritizes structural clarity and standard Unix philosophy.

### Configuration Reference (`~/.mg`)

| Option                         | Description |
| :---                           | :--- |
| **`set-default-mode fill`**    | Enables word wrapping at column 72. Essential for clean Git commit messages and `README` editing. |
| **`set-default-mode indent`**  | Preserves indentation level on new lines. Critical for writing structured code (Go, C, Python) without manual tabbing. |
| **`set-tab-width 8`**          | Enforces **Kernel Style** tabs. Ensures code honesty: if indentation looks too deep, the code is too complex. |
| **`auto-execute *.go c-mode`** | Forces `mg` to treat Go files as C. This enables smart indentation for braces `{ }` since `mg` lacks native Go support. |
| **`backup-to-home-directory`** | Saves backup files (`file~`) to `~/.mg.d/` or `$HOME` instead of cluttering the project root. |

### Keybindings

Standard Emacs bindings apply, with a few additions for navigation:

* `M-g` : **Go to line** (Essential for debugging compiler errors).
* `M-%` : **Query Replace** (Search and replace with confirmation).
* `C-x C-f` : **Find file** (Open file).
