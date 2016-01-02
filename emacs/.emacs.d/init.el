(package-initialize)
(setq package-enable-at-startup nil)

(add-to-list 'load-path (concat user-emacs-directory "config"))
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(require 'my-evil)
(require 'my-core)
(require 'my-magit)
(require 'dired-x)
(require 'elisp-slime-nav)
(require 'my-ibuffer)
(require 'my-dired)
(require 'my-term)
(require 'my-leader-keys)
