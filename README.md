# tla-input
TLA+ Unicode input for Emacs. Based on the [tlaplus-standard](https://github.com/tlaplus/tlaplus-standard/tree/main/unicode)
 and the Neovim plugin [tlaplus-community/tlaplus-nvim-plugin](https://github.com/tlaplus-community/tlaplus-nvim-plugin).

## Installation

The following config downloads this package from GitHub with `straight.el` and
sets up a hook to use the input method on `tla-mode`.
- If you use a different mode for editing TLA+ files, make sure to update the hook in the snippet.
``` emacs-lisp
(use-package tla-input
  :straight (:host github :repo "bugarela/tla-input")
  :hook ((tla-mode . setup-tla-input)))
```

## Usage

If everything is set up correctly, you should see an additional "TLA⁺"  in your modeline, corresponding to the input method.

Any symbols from this
[table](https://github.com/tlaplus/tlaplus-standard/blob/main/unicode/tla-unicode.csv)
that get typed in their ASCII form will be immediately transformed into their
unicode version.

You can use [tlauc](https://github.com/tlaplus-community/tlauc) to automatically convert existing TLA+ ASCII specs into unicode.

If you are not sure how to type the ASCII version of a symbol, put your cursor over it and run `M-x quail-show-key`.

Learn more about input methods in the official [Emacs
documentation](https://www.gnu.org/software/emacs/manual/html_node/emacs/Select-Input-Method.html)

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
