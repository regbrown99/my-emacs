;; My Custom init.el file
;; Created: 2019-09-10 Tue
;; Last updated: 2019-09-11 Wed

;; Add the folder to my custom themes to the load path
;; Allows me to store all of my custom themes in this folder all in one place and have them loaded at Emacs launch.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'wombat) ;; selects wombat as the initial theme

(auto-fill-mode) ;; auto wraps lines at the fill-column
(fill-column) ;; variable that indicates the right margin. default = 70
(visual-fill-column) ;; shows the fill-column visually on the screen
;; (set-fill-column 100) ;; sets fill-column to 100
(setq -default fill-column 100) ;; sets default fill-column to 100
(add-hook 'text-mode-hook 'turn-on-auto-fill) ;; automatically turns on auto-fill-mode when in text mode

(visual-line-mode) ;; enables the visual highlighting of the line at point

(linum-mode) ;; displays line numbers
(global-linum-mode) ;; turns on linum-mode globally
(global-display-line-numbers-mode) ;; similar to global-linum-mode but "better"? not sure how this is different or better

(column-number-mode) ;; displays column numbers
(show-paren-mode)
(electric-pair-mode)
(global-hl-line-mode 1) ;; not sure what this does
(setq default-cursor-type 'hbar) ;; sets default cursor to a horizontal bar

(writeroom-mode) ;; not sure what this does. got it from doom-emacs

(fill-paragraph) ;; command to wrap text in the paragraph at point


(toggle-frame-maximized) ;; maximizes the frame
(tool-bar-mode 0) ;; turns off the tool bar
(menu-bar-mode 0) ;; turns off the menu bar

(require 'package) ;; turns on use-package (I think)

;; Settings I got from Doom Emacs config. TODO: Need to test them to decide if I like them or not.
(visual-fill-column-mode)
(visual-line-mode)
(mixed-pitch-mode)
(org-indent-mode)
(+org-pretty-mode) ;; need to find out what the "+" in front means/does
(+write-mode)

;==============================
;; Org-mode Settings
;==============================
(org-indent-mode) ;; sets automatic indention in org-mode
;; org-indent-mode sets org-hide-leading-stars to "t" and org-adapt-indentation to "nil"
(org-startup-indented) ;; turns on org-indent-mode for all files. makes org-mode use hard spaces to align text with headings
(org-indent-indentation-per-level) ;; variable for org-indent-mode
(org-list-indent-offset) ;; TODO: find out what this does

; Emacs tries to determine the major mode by looking at the text at the start of the buffer, based on the variable magic-mode-alist.
; By default, this variable is "nil" (an empty list), so Emacs skips this step.
; However, you can customize this variable in your init file.
; ...Fourth, if Emacs still hasn't found a suitable mode, it looks at the filename.
; The correspondence between filenames and major modes is controlled by the variable auto-mode-alist.
; It's value is a list in which each element has the form:
; (regexp . mode-function)
; -or-
; (regexp mode-function flag)
; For example:
(setq 'auto-mode-alist 
      '("\\.txt\\" . org-mode)
      ) ;; TODO: check my syntax on setting this variable. not sure about the quotes in particular.
; selects org-mode for files whose names end in .txt

; If you don't want to use hjkl, you can customize "evil-org-movement-bindings".
; If you want to use these bindings even in insert mode, you can customize "evil-org-use-additional-insert".

