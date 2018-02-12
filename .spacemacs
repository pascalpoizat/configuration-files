;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     javascript
     yaml
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; colors
     ;; eyebrowse
     html
     markdown
     helm
     auto-completion
     ;; better-defaults
     emacs-lisp
     (git :variables
          git-magit-status-fullscreen t)
     github
     markdown
     org
     ;; mu4e
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     ;; version-control
     ;; hindent-style is one of 'fundamental', 'johan-tibell', 'chris-done', 'gibiansky',
     ;; -> see https://spacemacs.org/layers/+lang/haskell/README.html#hindent
     (haskell :variables
              haskell-completion-backend 'intero
              haskell-enable-hindent-style "chris-done")
     dash
     ;; latex
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    ;; bug -- see https://github.com/syl20bnr/spacemacs/issues/9374
                                    org-projectile
                                    )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (todos . 10))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                        spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Fira Code" ;; "Source Code Pro, Noto Mono, Fira Code"
                               :size 18 ;; 13
                               :weight normal
                               :width normal
                               :adstyle sans
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq-default
   ;; if `nil' then the right alt key of the mac is left unchanged
   mac-right-option-modifier nil
   ))
;;
;; golden-ratio
;;
;; (require golden-ratio)
;; (golden-ratio-mode 1)
;; (setq golden-ratio-auto-scale t)
;; (setq golden-ratio-adjust-factor .8
;;      golden-ratio-wide-adjust-factor .8)

;;
;; orgmode
;; from https://koenig-haunstetten.de/2016/07/09/code-snippet-for-orgmode-e05s02/
;;
(defun my/org-add-ids-to-headlines-in-file ()
  "Add ID properties to all headlines in the current file which do not already have one."
  (interactive)
  (org-map-entries 'org-id-get-create))

(defun my/copy-id-to-clipboard()
  "Copy the ID property value to killring, if no ID is there then create a new unique ID.
   This function works only in org-mode buffers.
   The purpose of this function is to easily construct id:-links to org-mode items.
   If its assigned to a key it saves you marking the text and copying to the killring."
  (interactive)
  (when (eq major-mode 'org-mode) ; do this only in org-mode buffers
    (setq mytmpid (funcall 'org-id-get-create))
    (kill-new mytmpid)
    (message "Copied %s to killring (clipboard)" mytmpid)
    ))

(global-set-key (kbd "<f5>") 'my/copy-id-to-clipboard)


(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;;
  ;; bug resolving see https://github.com/syl20bnr/spacemacs/issues/9608
  (require 'helm-bookmark)
  ;; another bug
  (add-hook 'spacemacs-buffer-mode-hook
            (lambda () (set (make-local-variable 'mouse-1-click-follows-link) nil)))
  ;; flycheck pop-up (pos-tip) bug on osx
  (setq flycheck-display-errors-function 'flycheck-display-error-messages-unless-error-list)
  ;; separate quit / quit + kill deamon
  ;; see https://medium.com/@bobbypriambodo/blazingly-fast-spacemacs-with-persistent-server-92260f2118b7
  (evil-leader/set-key "q q" 'spacemacs/frame-killer)
  ;; powerline
  (setq powerline-default-separator 'roundstub)
  ;; fira code font
  ;; (nothing) 
  ;; haskell
  (add-hook 'haskell-mode-hook
            'turn-on-haskell-indentation)
  (add-hook 'haskell-mode-hook
            'intero-mode)
  (add-to-list 'exec-path "~/.local/bin/")
  (with-eval-after-load 'intero
    (flycheck-add-next-checker 'intero '(warning . haskell-hlint)))
  ;;
  ;; time related
  ;;
  ;; simple version
  (display-time-mode 1)
  ;;
  ;; orgmode
  ;;
  ;; links:
  ;; http://www.i3s.unice.fr/~malapert/org/tips/emacs_orgmode.html
  ;; https://emacs.cafe/emacs/orgmode/gtd/2017/06/30/orgmode-gtd.html
  ;; https://blog.sleeplessbeastie.eu/2016/04/22/how-to-use-org-capture-from-system-tray/
  ;;
  ;; directories and files
  ;; inbox     -> inbox.org
  ;; trash     -> not kept
  ;; someday   -> someday.org
  ;; reference -> reference.org
  ;; gtd       -> gtd.org (work)
  ;;           -> personal.org (personal)
  ;; archives  -> filename with _archive added to it
  (with-eval-after-load 'org
    (setq org-directory (expand-file-name "~/Dropbox/ORGMODE"))
    (setq org-default-notes-file (concat org-directory "inbox.org"))
    (setq org-agenda-files '("~/Dropbox/ORGMODE/inbox.org"
                             "~/Dropbox/ORGMODE/gtd.org"
                             "~/Dropbox/ORGMODE/personal.org"))
    (setq org-mobile-directory "~/Dropbox/Applications/MobileOrg")
    (setq org-mobile-inbox-for-pull "~/Dropbox/ORGMODE/inbox.org")
    (setq org-mobile-files '("~/Dropbox/ORGMODE/inbox.org" ;; already in org-agenda-files
                             "~/Dropbox/ORGMODE/gtd.org" ;; already in org-agenda-files
                             "~/Dropbox/ORGMODE/personal.org" ;; already in org-agenda-files
                             "~/Dropbox/ORGMODE/reference.org"
                             "~/Dropbox/ORGMODE/someday.org"))
    ;; features
    (setq org-enforce-todo-dependencies t)
    (setq org-enforce-todo-checkbox-dependencies t)
    (setq org-track-ordered-property-with-tag t)
    (setq org-log-into-drawer t)
    (setq org-clock-into-drawer "CLOCKING")
    (setq org-checkbox-hierarchical-statistics nil)
    (setq org-hierarchical-todo-statistics nil)
    ;; -- GTD (to update)
    ;; #+SEQ_TODO: TODO(t) PROJECT(p) NEXT(n!) STARTED(s!) WAITING(w!) | DONE(d!) CANCELLED(c!) DEFERRED(f!)
    ;; #+TAGS: { research(r) teaching(t) perso(p) } admin(a)
    ;; #+TAGS: conference registration transport housing refund
    ;; #+TAGS: article slides review
    ;; #+TAGS: learn
    (setq org-todo-keywords '((sequence "TODO(t)" "PROJECT(p)" "NEXT(n!)" "STARTED(s!)" "WAITING(w!)" "SPECIAL(x)" "|" "DONE(d!)" "CANCELLED(c!)" "DEFERRED(f!)")))
    (setq org-tag-persistent-alist
          '(("URGENT" . ?u)
            (:startgroup . nil)
            ("research" . ?r) ("teaching" . ?t) ("perso" . ?p)
            (:endgroup . nil)
            ("admin" . ?a)
            ("conference" . nil) ("registration" . nil) ("transport" . nil) ("housing" . nil) ("refund" . nil)
            ("article" . nil) ("slides" . nil) ("review" . nil)
            ("code" . nil)
            ("learn" . nil)
            ("phone" . nil)
            ))
    ;; -- capture
    (setq org-capture-templates
          '(("t" "Todo [inbox]" entry (file+headline "inbox.org" "Tasks")
             "* TODO %^{description}\n:PROPERTIES:\n:CREATED: %U\n:END:\n\n")
            ("n" "Note [inbox]" entry (file+headline "inbox.org" "Notes")
             "* %^{description}\n:PROPERTIES:\n:CREATED: %U\n:END:\n\n")
            ("c" "Conference [inbox]" entry (file+headline "inbox.org" "Tasks")
             (file "templates/conference.org.txt"))
            )
          )
    ;; -- refile
    (setq org-refile-use-outline-path 'file)
    (setq org-outline-path-complete-in-steps nil)
    (setq org-reverse-note-order t)
    (setq org-refile-targets '(("~/Dropbox/ORGMODE/gtd.org" :maxlevel . 4)
                               ("~/Dropbox/ORGMODE/personal.org" :maxlevel . 4)
                               ("~/Dropbox/ORGMODE/someday.org" :level . 4)
                               ("~/Dropbox/ORGMODE/reference.org" :level . 4)))
    ;; -- presentation
    (setq org-tags-column 0)
    (setq org-bullets-bullet-list '("■" "◆" "●" "○" "-")) ;; '("■" "◆" "▲" "▶" "●" "○")
    ;; -- agenda
    (setq org-agenda-custom-commands
          (quote
           (
            ;; overview
            ("z" "Overview for today"
             (
              (tags-todo "URGENT"
                         ((org-agenda-overriding-header "Urgent Tasks")
                          (org-agenda-files
                           '("~/Dropbox/ORGMODE/inbox.org" "~/Dropbox/ORGMODE/gtd.org" "~/Dropbox/ORGMODE/personal.org"))))
              (tags-todo "phone"
                         ((org-agenda-overriding-header "Phone Calls")
                          (org-agenda-files
                           '("~/Dropbox/ORGMODE/inbox.org" "~/Dropbox/ORGMODE/gtd.org" "~/Dropbox/ORGMODE/personal.org"))))
              (agenda ""
                      ((org-agenda-overriding-header "Today")
                       (org-agenda-files
                        '("~/Dropbox/ORGMODE/inbox.org" "~/Dropbox/ORGMODE/gtd.org" "~/Dropbox/ORGMODE/personal.org"))
                       (org-agenda-span 1)
                       (org-agenda-sorting-strategy '(time-up priority-down))))
              (agenda "appointments"
                      ((org-agenda-overriding-header "Appointments")
                       (org-agenda-files
                        '("~/Dropbox/ORGMODE-TMP/research_agenda.org" "~/Dropbox/ORGMODE-TMP/teaching_agenda.org" "~/Dropbox/ORGMODE-TMP/personal_agenda.org"))
                       (org-agenda-span 1)
                       ))
              ))
            ;; end overview
            )))
    ;;
    (add-hook 'org-mode-hook
              (lambda () (add-hook 'before-save-hook 'my/org-add-ids-to-headlines-in-file nil 'local)))
    ;;
    )
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(ansi-color-names-vector
;;   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(package-selected-packages
   (quote
    (ghub let-alist web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc company-tern dash-functional tern coffee-mode yaml-mode rainbow-mode rainbow-identifiers color-identifiers-mode company-auctex auctex-latexmk auctex helm-dash dash-at-point org-category-capture mu4e-maildirs-extension mu4e-alert sass-mode company-web web-mode tagedit slim-mode scss-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode web-completion-data org-projectile org-present org-pomodoro alert log4e gntp org-download htmlize gnuplot markdown-toc mmm-mode markdown-mode gh-md smeargle orgit magit-gitflow magit-gh-pulls helm-gitignore gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gist gh marshal logito pcache ht evil-magit magit magit-popup git-commit with-editor helm-company helm-c-yasnippet fuzzy flycheck-pos-tip pos-tip flycheck-haskell company-statistics company-cabal auto-yasnippet ac-ispell auto-complete intero flycheck hlint-refactor hindent helm-hoogle haskell-snippets yasnippet company-ghci company-ghc ghc company haskell-mode cmm-mode ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C"))))
 )
