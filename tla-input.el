;;; tla-input.el --- TLA+ unicode input method

;;; MIT License
;;;
;;; Commentary:
;;; Input method to convert ASCII characters to unicode in respect to the table in [1].
;;; [1]: https://github.com/tlaplus-community/tlaplus-nvim-plugin/blob/main/plugin/tla-unicode.csv
;;;
;;; Code:

(require 'quail)

(quail-define-package
 "tla-unicode" "TLA+" "TLA⁺" t
 "Unicode input for TLA+"
 nil t t t t nil nil nil nil nil t)

(quail-define-rules
 ("==" "≜")
 ("\\in" "∈")
 ("<-" "←")
 ("\\A" "∀")
 ("\\forall" "∀")
 ("\\E" "∃")
 ("\\exists" "∃")
 ("|->" "↦")
 ("->" "→")
 ("<<" "⟨")
 (">>" "⟩")
 (">>_" "⟩_")
 ("[]" "□")
 ("->" "→")
 ("::" "∷")
 ("~" "¬")
 ("\\lnot" "¬")
 ("\\neg" "¬")
 ("[]" "□")
 ("<>" "◇")
 ("=>" "⇒")
 ("->" "⇸")
 ("\equiv" "≡")
 (">" "⇔")
 ("" "↝")
 ("\\/" "∧")
 ("\\land" "∧")
 ("\\/" "∨")
 ("\\lor" "∨")
 (":=" "≔")
 ("::=" "⩴")
 ("/=" "≠")
 ("#" "≠")
 ("=<" "≤")
 ("<=" "≤")
 ("\\leq" "≤")
 (">=" "≥")
 ("\\geq" "≥")
 ("\\approx" "≈")
 ("|-" "⊢")
 ("|=" "⊨")
 ("-|" "⊣")
 ("=|" "⫤")
 ("\\asymp" "≍")
 ("\\cong" "≅")
 ("\\doteq" "≐")
 ("\\gg" "≫")
 ("\\ll" "≪")
 ("\\in" "∈")
 ("\\notin" "∉")
 ("\\prec" "≺")
 ("\\succ" "≻")
 ("\\preceq" "⪯")
 ("\\succeq" "⪰")
 ("\\propto" "∝")
 ("\\sim" "∼")
 ("\\simeq" "≃")
 ("\\sqsubset" "⊏")
 ("\\sqsupset" "⊐")
 ("\\sqsubseteq" "⊑")
 ("\\sqsupseteq" "⊒")
 ("\\subset" "⊂")
 ("\\supset" "⊃")
 ("\\subseteq" "⊆")
 ("\\supseteq" "⊇")
 ("\\intersect" "∩")
 ("\\cap" "∩")
 ("\\union" "∪")
 ("\\cup" "∪")
 (".." "‥")
 ("..." "…")
 ("(+)" "⊕")
 ("\\oplus" "⊕")
 ("(-)" "⊖")
 ("\\ominus" "⊖")
 ("||" "‖")
 ("(.)" "⊙")
 ("\\odot" "⊙")
 ("(/)" "⊘")
 ("\\oslash" "⊘")
 ("(\\X)" "⊗")
 ("\\otimes" "⊗")
 ("\\bigcirc" "◯")
 ("\\bullet" "●")
 ("\\div" "÷")
 ("\\o" "∘")
 ("\\circ" "∘")
 ("\\star" "⋆")
 ("!!" "‼")
 ("??" "⁇")
 ("\\sqcap" "⊓")
 ("\\sqcup" "⊔")
 ("\\uplus" "⊎")
 ("\\X" "×")
 ("\\times" "×")
 ("\\wr" "≀")
 ("\\cdot" "⋅")
 ("^+" "⁺")
 ("Nat" "ℕ")
 ("Int" "ℤ")
 ("Real" "ℝ")
 )

(defun setup-tla-input ()
  (set-input-method "tla-unicode"))

(provide 'tla-input)
;;; tla-input.el ends here