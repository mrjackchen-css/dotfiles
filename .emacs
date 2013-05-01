;;; This file, which must be called '.emacs' and must reside in your
;;; home directory, is automatically read in by GNU Emacs as it is
;;; invoked. If you want to understand what is going on here, try
;;; using the excellent help facility built into the editor.

;;; These are just suggestions for an init file.  Feel free to remove or 
;;; add as you wish.  Note that a number of suggestions are commented out.

;;; PLEASE check to see what is in your .emacs file before replacing
;;; it with this.  Some commands write out info into your .emacs file
;;; and you will lose this if you copy this file over it.

;;; Just some randoms.
(setq inhibit-startup-message t)     ; don't show me the startup message

;;; This line was probably in a .emacs file that emacs created for
;;; you.  I'm putting it in here since you might have overwritten your
;;; old .emacs file.  If you set it up to not suspend emacs set the
;;; last value to "t" (instead of "nil").
;(put 'suspend-emacs 'disabled nil)

;;; Make the mode line a little more useful.
(setq-default mode-line-buffer-identification '("Buffer: %b"))
(setq-default mode-line-format
              '("%[" mode-line-buffer-identification
                "%* " global-mode-string "(" mode-name
                minor-mode-alist "%n" mode-line-process ") File: %f [%p]%]"))

;;; If you want this instead of "lisp-buffers" (which is on C-x C-b now),
;;; uncomment the next line.
;(define-key ctl-x-map "\C-b" 'buffer-menu)

;;; Run rmail on C-x r.  (instead of find-file-read-only).
;(define-key ctl-x-map "r" 'rmail)

;;; Change the behaviour of "reply" in Rmail to reply to the sender
;;; and all other recipients, instead of only repling to the sender.
;(add-hook 'rmail-mode-hook
;          '(lambda ()
;            (define-key rmail-mode-map "r" 'rmail-reply)))

;;; When in Text mode, want to be in Auto-Fill mode.
;;;
(defun my-auto-fill-mode nil (auto-fill-mode 1))
(add-hook 'text-mode-hook 'my-auto-fill-mode)
(add-hook 'mail-mode-hook 'my-auto-fill-mode)

;;; If auto-mode-alist can't determine what mode the latest file
;;; needs, the default should be text-mode...
;;; Ie., uncomment this is you want the default to be text mode 
;;; instead of fundamental.
;(setq-default major-mode 'text-mode)

;;; When in C-mode, want all bells and whistles...
(setq c-auto-newline t)

;;; Want all mail to Bcc to yourself.  The second line says don't Cc to 
;;; yourself (since you are already Bcc'ing yourself).
;(setq mail-self-blind t)
;(setq rmail-dont-reply-to-names (getenv "USER"))
;Include a CC in any news messages.
;(setq vnews-self t)

;;; Display time and load averages on the mode line.  (Used with the setting
;;; of the mode line above.)
(load "time" t t)
(display-time)

;;; Exchange behaviour of ESC and TAB in the minibuffer.
;;; Uncomment if you want.
;(define-key minibuffer-local-completion-map "\t" 'ESC-prefix)
;(define-key minibuffer-local-completion-map "\e" 'minibuffer-complete)
;(define-key minibuffer-local-must-match-map "\t" 'ESC-prefix)
;(define-key minibuffer-local-must-match-map "\e" 'minibuffer-complete)

;;; /usr/local/gnuemacs/lisp/default.el is loaded after this file so you
;;; should look there to make sure you aren't doing something twice.

(put 'eval-expression 'disabled nil)
(custom-set-variables
 '(standard-indent 2))
(custom-set-faces)
