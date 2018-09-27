(setq lean-packages '(company
                      lean-mode
                      company-lean))


(defun lean/post-init-company ()
  (spacemacs|add-company-hook company-lean)
  )

(defun lean/post-init-lean-mode ()
  (spacemacs/set-leader-keys-for-major-mode 'lean-mode
    "f" 'lean-find-definition
    "a" 'company-complete
    "f" 'lean-find-definition
    "," 'xref-pop-marker-stack
    "k" 'quail-show-key
    "x" 'lean-std-exe
    "h" 'lean-hole
    "d" 'helm-lean-definitions
    "g" 'lean-toggle-show-goal
    "n" 'lean-toggle-next-error
    "b" 'lean-message-boxes-toggle
    "r" 'lean-server-restart
    "s" 'lean-server-switch-version
    "en" 'flycheck-next-error
    "ep" 'flycheck-previous-error
    "el" 'flycheck-list-errors
  )
)

(defun lean/init-lean-mode ()
  (use-package lean-mode
    :defer t
    :mode "\\.lean\\'"
  )
)

(defun lean/init-company-lean ()
  (use-package company-lean
    :defer t
    :mode "\\.lean\\'"
    )
  )
