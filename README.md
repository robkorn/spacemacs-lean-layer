This is a Spacemacs layer for the Lean theorem prover which uses Lean Mode with updated keybindings.

Lean: https://github.com/leanprover/lean
Lean Mode: https://github.com/leanprover/lean-mode

Key Bindings and Commands
=========================

| Key                | Function                                                                        |
|--------------------|---------------------------------------------------------------------------------|
| <kbd>g d</kbd>     | jump to definition in source file (`lean-find-definition`)                      |
| <kbd>Spc m f</kbd> | jump to definition in source file (`lean-find-definition`)                      |
| <kbd>Spc m ,</kbd> | jump back to position before <kbd>M-.</kbd> (`xref-pop-marker-stack`)           |
| <kbd>Spc m k</kbd> | shows the keystroke needed to input the symbol under the cursor                 |
| <kbd>Spc m xx</kbd> | execute lean in stand-alone mode (`lean-std-exe`)                              |
| <kbd>Spc m h</kbd> | run a command on the hole at point (`lean-hole`)                                |
| <kbd>Spc m d</kbd> | show a searchable list of definitions (`helm-lean-definitions`)                 |
| <kbd>Spc m g</kbd> | toggle showing current tactic proof goal (`lean-toggle-show-goal`)              |
| <kbd>Spc m n</kbd> | toggle showing next error in dedicated buffer (`lean-toggle-next-error`)        |
| <kbd>Spc m b</kbd> | toggle showing output in inline boxes (`lean-message-boxes-toggle`)             |
| <kbd>Spc m r</kbd> | restart the lean server (`lean-server-restart`)                                 |
| <kbd>Spc m s</kbd> | switch to a different Lean version via [elan](https://github.com/Kha/elan) (`lean-server-switch-version`) |
| <kbd>Spc m a</kbd> | toggle company auto-complete menu                                               |
| <kbd>Spc e n</kbd> | flycheck: go to next error                                                      |
| <kbd>Spc e p</kbd> | flycheck: go to previous error                                                  |
| <kbd>Spc e l</kbd> | flycheck: show list of errors                                                   |

Installation
==============
        $ git clone https://github.com/robkorn/spacemacs-lean-layer
        $ cd spacemacs-lean-layer 
        $ mv lean ~/.emacs.d/private/local

Then simply add 'lean' as one of your configuration layers in your spacemacs config.


Possible Issues
==============
###### 1. 'Spc m' isn't available for lean.  
After a couple hours of hunting around for why this issue exists it seems it is in relation to the lean-mode package itself. Even using lean-server-restart doesn't seem to initalize it properly. However to fix this simply toggle company auto-complete and for whatever reason Spacemacs remembers you are indeed in Vim mode and should have access to the Vim Leader Key for this major mode. This issue exists whether or not company-lean is installed.
