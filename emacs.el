;; line numbering
(global-linum-mode t)
(setq linum-format "%4d\u2502 ")
;; show parans
(show-paren-mode t)

;; invisible chars
(setq-default whitespace-style '(face trailing lines empty indentation::space))
(global-whitespace-mode t)

(custom-set-variables
 '(ansi-color-names-vector
 ["#242424" "#e5786d" "#95e454" "#cae682"
 "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wheatgrass))))

(custom-set-faces)
(put 'erase-buffer 'disabled nil)

;; file backups
(setq backup-directory-alist '(("." . "~/.saves")))
(setq backup-by-copying t)
