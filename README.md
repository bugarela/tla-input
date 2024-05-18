# tla-input
TLA+ Unicode input for Emacs. Based on this
[table](https://github.com/tlaplus-community/tlaplus-nvim-plugin/blob/main/plugin/tla-unicode.csv) from
[tlaplus-community/tlaplus-nvim-plugin](https://github.com/tlaplus-community/tlaplus-nvim-plugin).

## Installation

The following config downloads this package from GitHub with `straight.el` and
sets up a hook to use the input method on `tla-mode`.
- If you use a different mode for editing TLA+ files, make sure to update the hook.
``` emacs-lisp
(use-package tla-input
  :straight (:host github :repo "bugarela/tla-input")
  :hook ((tla-mode . setup-tla-input)))
```

## Other Emacs packages for TLA+
This is not a major mode. Consider using some of the following:
- [ratish-punnoose/tla-mode](https://github.com/ratish-punnoose/tla-mode)
- [bch/tlamode](https://git.sdf.org/bch/tlamode/)
- [carlthuringer/tla-mode](https://github.com/carlthuringer/tla-mode)
- [mrc/tla-tools](https://github.com/mrc/tla-tools)
- [Davidbrcz/tla-ts-mode](https://github.com/Davidbrcz/tla-ts-mode)

Some of these use `prettify-symbols-mode` to render pretty symbols as you type.
This is not the same as what this package does, which is actually changing what
is written in the file. I recommend disabling `prettify-symbols-mode` if you use
this input package.
