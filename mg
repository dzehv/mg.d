;; to sync a bit with GNU Emacs style

;; enable both
set-default-mode fill
set-default-mode indent

set-tab-width 8
set-fill-column 72
auto-execute *.c c-mode

;; toggle on/off making backup files, enabled by default
; make-backup-files
backup-to-home-directory ;; ~/.mg.d

;; like (show-paren-mode 1)
; blink-matching-paren

;; bindings
global-set-key "\^x\^f" find-file
global-set-key "\M-g" goto-line
global-set-key "\M-%" query-replace
