;; to sync a bit with GNU Emacs style

;; enable both
set-default-mode fill
set-default-mode indent

;; global style settings
set-tab-width 8
set-fill-column 72

;; programming options
auto-execute *.c c-mode
auto-execute *.go c-mode
;; auto-execute *.go set-c-tab-width 8 ; only for *.go

;; toggle on/off making backup files, enabled by default
; make-backup-files
backup-to-home-directory ;; ~/.mg.d

;; bindings
global-set-key "\^x\^f" find-file
global-set-key "\M-g" goto-line
global-set-key "\M-%" query-replace
