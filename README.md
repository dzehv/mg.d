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

## Terminal hacks

Mac OS Meta usage trick:

``` bash
Use ESC-x as M-x
```

## Configuration notes

This project adopts a **Kernel Style** workflow using `mg`, the lightweight editor. The configuration prioritizes structural clarity and standard Unix philosophy.

### Configuration Reference (`~/.mg`)

| Option                         | Description |
| :---                           | :--- |
| **`set-default-mode fill`** | [cite_start]Enables word wrapping at column 72[cite: 1]. Essential for clean Git commit messages and `README` editing. |
| **`set-default-mode indent`** | [cite_start]Preserves indentation level on new lines[cite: 1]. Keeps the cursor aligned with the previous line. |
| **`set-tab-width 8`** | [cite_start]Enforces **Kernel Style** tabs (8 chars)[cite: 1]. Ensures code honesty: if indentation looks too deep, the code is too complex. |
| **`auto-execute *.go c-mode`** | [cite_start]Forces `mg` to treat Go files as C. Enables structural matching for braces `{ }` and C-style logic. |
| **`backup-to-home-directory`** | [cite_start]Saves backup files (`file~`) to `~/.mg.d/` or `$HOME` instead of cluttering the project root[cite: 3]. |

### Keybindings

Standard Emacs bindings apply, with a few additions for navigation:

* `M-g` : **Go to line** (Essential for debugging compiler errors).
* `M-%` : **Query Replace** (Search and replace with confirmation).
* `C-x C-f` : **Find file** (Open file).
