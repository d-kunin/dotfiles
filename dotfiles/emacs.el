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

;; set correct ENV
(setenv "PATH" (concat "/usr/local/smlnj/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/smlnj/bin" exec-path))

;; add autocomplete
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;; Autocomplete key
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)

;; font customization
(set-face-attribute 'default nil :height 160)
;; set font for all windows
(set-default-font "Inconsolata 14")

;; try to load cedet
(load-file "~/dev_tools/cedet-1.1/common/cedet.el")
(global-ede-mode 1) ;; enable project managment system
(semantic-load-enable-code-helpers) ;; enable prototype help and smart completleion
(global-srecode-minor-mode 1) ;; enable template insertion menu

;; some bindings for sementic
;; (defun cedet-hook ()
;;   (local-set-key [(control return)] 'semantic-ia-complete-symbol)
;;   (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
;;   (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
;;   (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
;;   (message "My hook is loaded.")
;; )
;; (add-hook 'c-mode-common-hook 'cedet-hook)

;; markdown mode
(add-to-list 'load-path "~/.emacs.d/markdown-mode")
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

;; file backups
(setq backup-directory-alist '(("." . "~/.saves")))
(setq backup-by-copying t)
