;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (21729 15269 0 0))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "auto-complete/auto-complete-config" "auto-complete/auto-complete-config.el"
;;;;;;  (21729 15269 0 0))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "company-mode/company" "company-mode/company.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company.el

(autoload 'company-mode "company-mode/company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific back-end, call
it interactively or use `company-begin-backend'.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(defvar global-company-mode nil "\
Non-nil if Global-Company mode is enabled.
See the command `global-company-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company-mode/company" nil)

(autoload 'global-company-mode "company-mode/company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global-Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-abbrev" "company-mode/company-abbrev.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-abbrev.el

(autoload 'company-abbrev "company-mode/company-abbrev" "\
`company-mode' completion back-end for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-bbdb" "company-mode/company-bbdb.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-bbdb.el

(autoload 'company-bbdb "company-mode/company-bbdb" "\
`company-mode' completion back-end for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-css" "company-mode/company-css.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-css.el

(autoload 'company-css "company-mode/company-css" "\
`company-mode' completion back-end for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-dabbrev" "company-mode/company-dabbrev.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-dabbrev.el

(autoload 'company-dabbrev "company-mode/company-dabbrev" "\
dabbrev-like `company-mode' completion back-end.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-dabbrev-code" "company-mode/company-dabbrev-code.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-mode/company-dabbrev-code" "\
dabbrev-like `company-mode' back-end for code.
The back-end looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-elisp" "company-mode/company-elisp.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-elisp.el

(autoload 'company-elisp "company-mode/company-elisp" "\
`company-mode' completion back-end for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-etags" "company-mode/company-etags.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-etags.el

(autoload 'company-etags "company-mode/company-etags" "\
`company-mode' completion back-end for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-files" "company-mode/company-files.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-files.el

(autoload 'company-files "company-mode/company-files" "\
`company-mode' completion back-end existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-gtags" "company-mode/company-gtags.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-gtags.el

(autoload 'company-gtags "company-mode/company-gtags" "\
`company-mode' completion back-end for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-ispell" "company-mode/company-ispell.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-ispell.el

(autoload 'company-ispell "company-mode/company-ispell" "\
`company-mode' completion back-end using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-keywords" "company-mode/company-keywords.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-keywords.el

(autoload 'company-keywords "company-mode/company-keywords" "\
`company-mode' back-end for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-nxml" "company-mode/company-nxml.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-nxml.el

(autoload 'company-nxml "company-mode/company-nxml" "\
`company-mode' completion back-end for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-oddmuse" "company-mode/company-oddmuse.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-oddmuse.el

(autoload 'company-oddmuse "company-mode/company-oddmuse" "\
`company-mode' completion back-end for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-pysmell" "company-mode/company-pysmell.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-pysmell.el

(autoload 'company-pysmell "company-mode/company-pysmell" "\
`company-mode' completion back-end for pysmell.
This requires pysmell.el and pymacs.el.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-semantic" "company-mode/company-semantic.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-semantic.el

(autoload 'company-semantic "company-mode/company-semantic" "\
`company-mode' completion back-end using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-tempo" "company-mode/company-tempo.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-tempo.el

(autoload 'company-tempo "company-mode/company-tempo" "\
`company-mode' completion back-end for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-xcode" "company-mode/company-xcode.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-xcode.el

(autoload 'company-xcode "company-mode/company-xcode" "\
`company-mode' completion back-end for Xcode projects.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-yasnippet" "company-mode/company-yasnippet.el"
;;;;;;  (21729 17383 0 0))
;;; Generated autoloads from company-mode/company-yasnippet.el

(autoload 'company-yasnippet "company-mode/company-yasnippet" "\
`company-mode' back-end for `yasnippet'.

This back-end should be used with care, because as long as there are
snippets defined for the current major mode, this back-end will always
shadow back-ends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a back-end or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other back-ends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (21729 2605
;;;;;;  0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "el-get/el-get-bundle.el"
;;;;;;  (21729 2605 0 0))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The FORM after the property list is
treated as initialization code, which is actually an `:after'
property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (21729 2605 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "elpy/elpy" "elpy/elpy.el" (21729 17398 0 0))
;;; Generated autoloads from elpy/elpy.el

(autoload 'elpy-enable "elpy/elpy" "\
Enable Elpy in all future Python buffers.

\(fn &optional IGNORED)" t nil)

(autoload 'elpy-mode "elpy/elpy" "\
Minor mode in Python buffers for the Emacs Lisp Python Environment.

This mode fully supports virtualenvs. Once you switch a
virtualenv using \\[pyvenv-workon], you can use
\\[elpy-rpc-restart] to make the elpy Python process use your
virtualenv.

See https://github.com/jorgenschaefer/elpy/wiki/Keybindings for a
more structured list.

\\{elpy-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'elpy-config "elpy/elpy" "\
Configure Elpy.

This function will pop up a configuration buffer, which is mostly
a customize buffer, but has some more options.

\(fn)" t nil)

(autoload 'elpy-version "elpy/elpy" "\
Display the version of Elpy.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "evil-leader/evil-leader" "evil-leader/evil-leader.el"
;;;;;;  (21729 14189 0 0))
;;; Generated autoloads from evil-leader/evil-leader.el

(autoload 'global-evil-leader-mode "evil-leader/evil-leader" "\
Global minor mode for <leader> support.

\(fn &optional ARG)" t nil)

(autoload 'evil-leader-mode "evil-leader/evil-leader" "\
Minor mode to enable <leader> support.

\(fn &optional ARG)" t nil)

(autoload 'evil-leader/set-key "evil-leader/evil-leader" "\
Bind `key' to command `def' in `evil-leader/default-map'.

Key has to be readable by `read-kbd-macro' and `def' a command.
Accepts further `key' `def' pairs.

\(fn KEY DEF &rest BINDINGS)" t nil)

(autoload 'evil-leader/set-key-for-mode "evil-leader/evil-leader" "\
Create keybindings for major-mode `mode' with `key' bound to command `def'.

See `evil-leader/set-key'.

\(fn MODE KEY DEF &rest BINDINGS)" t nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit" "evil-matchit/evil-matchit.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit.el

(autoload 'evilmi-select-items "evil-matchit/evil-matchit" "\
Select items/tags and the region between them

\(fn &optional NUM)" t nil)

(autoload 'evilmi-delete-items "evil-matchit/evil-matchit" "\
Delete items/tags and the region between them

\(fn &optional NUM)" t nil)

(autoload 'evilmi-jump-to-percentage "evil-matchit/evil-matchit" "\
Re-implementation of evil's similar functionality

\(fn NUM)" t nil)

(autoload 'evilmi-jump-items "evil-matchit/evil-matchit" "\
jump between item/tag(s)

\(fn &optional NUM)" t nil)

(autoload 'evilmi-version "evil-matchit/evil-matchit" "\


\(fn)" t nil)

(autoload 'evil-matchit-mode "evil-matchit/evil-matchit" "\
Buffer-local minor mode to emulate matchit.vim

\(fn &optional ARG)" t nil)

(autoload 'turn-on-evil-matchit-mode "evil-matchit/evil-matchit" "\
Enable evil-matchit-mode in the current buffer.

\(fn)" nil nil)

(autoload 'turn-off-evil-matchit-mode "evil-matchit/evil-matchit" "\
Disable evil-matchit-mode in the current buffer.

\(fn)" nil nil)

(defvar global-evil-matchit-mode nil "\
Non-nil if Global-Evil-Matchit mode is enabled.
See the command `global-evil-matchit-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-matchit-mode'.")

(custom-autoload 'global-evil-matchit-mode "evil-matchit/evil-matchit" nil)

(autoload 'global-evil-matchit-mode "evil-matchit/evil-matchit" "\
Toggle Evil-Matchit mode in all buffers.
With prefix ARG, enable Global-Evil-Matchit mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Matchit mode is enabled in all buffers where
`turn-on-evil-matchit-mode' would do it.
See `evil-matchit-mode' for more information on Evil-Matchit mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-c" "evil-matchit/evil-matchit-c.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-c.el

(autoload 'evilmi-c-get-tag "evil-matchit/evil-matchit-c" "\


\(fn)" nil nil)

(autoload 'evilmi-c-jump "evil-matchit/evil-matchit-c" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-cmake" "evil-matchit/evil-matchit-cmake.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-cmake.el

(autoload 'evilmi-cmake-get-tag "evil-matchit/evil-matchit-cmake" "\


\(fn)" nil nil)

(autoload 'evilmi-cmake-jump "evil-matchit/evil-matchit-cmake" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-fortran" "evil-matchit/evil-matchit-fortran.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-fortran.el

(autoload 'evilmi-fortran-get-tag "evil-matchit/evil-matchit-fortran" "\


\(fn)" nil nil)

(autoload 'evilmi-fortran-jump "evil-matchit/evil-matchit-fortran" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-html" "evil-matchit/evil-matchit-html.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-html.el

(autoload 'evilmi-html-get-tag "evil-matchit/evil-matchit-html" "\


\(fn)" nil nil)

(autoload 'evilmi-html-jump "evil-matchit/evil-matchit-html" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-javascript" "evil-matchit/evil-matchit-javascript.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-javascript.el

(autoload 'evilmi-javascript-get-tag "evil-matchit/evil-matchit-javascript" "\


\(fn)" nil nil)

(autoload 'evilmi-javascript-jump "evil-matchit/evil-matchit-javascript" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-latex" "evil-matchit/evil-matchit-latex.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-latex.el

(autoload 'evilmi-latex-get-tag "evil-matchit/evil-matchit-latex" "\


\(fn)" nil nil)

(autoload 'evilmi-latex-jump "evil-matchit/evil-matchit-latex" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-org" "evil-matchit/evil-matchit-org.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-org.el

(autoload 'evilmi-org-get-tag "evil-matchit/evil-matchit-org" "\


\(fn)" nil nil)

(autoload 'evilmi-org-jump "evil-matchit/evil-matchit-org" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-python" "evil-matchit/evil-matchit-python.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-python.el

(autoload 'evilmi-python-get-tag "evil-matchit/evil-matchit-python" "\


\(fn)" nil nil)

(autoload 'evilmi-python-jump "evil-matchit/evil-matchit-python" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-ruby" "evil-matchit/evil-matchit-ruby.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-ruby.el

(autoload 'evilmi-ruby-get-tag "evil-matchit/evil-matchit-ruby" "\


\(fn)" nil nil)

(autoload 'evilmi-ruby-jump "evil-matchit/evil-matchit-ruby" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-script" "evil-matchit/evil-matchit-script.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-script.el

(autoload 'evilmi-script-get-tag "evil-matchit/evil-matchit-script" "\


\(fn)" nil nil)

(autoload 'evilmi-script-jump "evil-matchit/evil-matchit-script" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-sdk" "evil-matchit/evil-matchit-sdk.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-sdk.el

(autoload 'evilmi-sdk-member "evil-matchit/evil-matchit-sdk" "\
check if KEYWORD exist in LIST

\(fn KEYWORD LIST)" nil nil)

(autoload 'evilmi-sdk-get-tag-info "evil-matchit/evil-matchit-sdk" "\
return (row column is-function-exit-point keyword),
the row and column marked position in evilmi-mylang-match-tags
is-function-exit-point could be 'FN_EXIT' or other status

\(fn KEYWORD MATCH-TAGS)" nil nil)

(autoload 'evilmi-sdk-get-tag "evil-matchit/evil-matchit-sdk" "\
return '(start-point tag-info)

\(fn MATCH-TAGS HOWTOS)" nil nil)

(autoload 'evilmi-sdk-jump "evil-matchit/evil-matchit-sdk" "\


\(fn RLT NUM MATCH-TAGS HOWTOS)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-sh" "evil-matchit/evil-matchit-sh.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-sh.el

(autoload 'evilmi-sh-get-tag "evil-matchit/evil-matchit-sh" "\


\(fn)" nil nil)

(autoload 'evilmi-sh-jump "evil-matchit/evil-matchit-sh" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-simple" "evil-matchit/evil-matchit-simple.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-simple.el

(autoload 'evilmi-simple-get-tag "evil-matchit/evil-matchit-simple" "\


\(fn)" nil nil)

(autoload 'evilmi-simple-jump "evil-matchit/evil-matchit-simple" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit/evil-matchit-template" "evil-matchit/evil-matchit-template.el"
;;;;;;  (21729 14528 0 0))
;;; Generated autoloads from evil-matchit/evil-matchit-template.el

(autoload 'evilmi-template-get-tag "evil-matchit/evil-matchit-template" "\


\(fn)" nil nil)

(autoload 'evilmi-template-jump "evil-matchit/evil-matchit-template" "\


\(fn RLT NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-nerd-commenter/evil-nerd-commenter" "evil-nerd-commenter/evil-nerd-commenter.el"
;;;;;;  (21729 14409 0 0))
;;; Generated autoloads from evil-nerd-commenter/evil-nerd-commenter.el

(autoload 'evilnc-comment-or-uncomment-paragraphs "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment paragraph(s). A paragraph is a continuation non-empty lines.
Paragraphs are separated by empty lines.

\(fn &optional NUM)" t nil)

(autoload 'evilnc-comment-or-uncomment-to-the-line "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment from the current line to the LINENUM line

\(fn &optional LINENUM)" t nil)

(autoload 'evilnc-quick-comment-or-uncomment-to-the-line "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment to line number by specifying its last digit(s)
For exmaple, you can use 'C-u 53 M-x evilnc-quick-comment-or-uncomment-to-the-line'
or 'C-u 3 M-x evilnc-quick-comment-or-uncomment-to-the-line' to comment to the line 6453

\(fn &optional UNITS)" t nil)

(autoload 'evilnc-toggle-invert-comment-line-by-line "evil-nerd-commenter/evil-nerd-commenter" "\


\(fn)" t nil)

(autoload 'evilnc-toggle-comment-empty-lines "evil-nerd-commenter/evil-nerd-commenter" "\


\(fn)" t nil)

(autoload 'evilnc-comment-or-uncomment-lines "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment NUM lines. NUM could be negative.
   Case 1: If no region selected, comment/uncomment on current line. if NUM>1, comment/uncomment
   extra N-1 lines from next line
   Case 2: If a region selected, the region is expand to make sure the region contain
   whole lines. Then we comment/uncomment the expanded region. NUM is ignored.

\(fn &optional NUM)" t nil)

(autoload 'evilnc-copy-and-comment-lines "evil-nerd-commenter/evil-nerd-commenter" "\
Copy and paste NUM lines. Then comment the original lines. NUM could be negative.
   Case 1: If no region selected, operate on current line. if NUM>1, comment/uncomment
   extra N-1 lines from next line
   Case 2: If a region selected, the region is expand to make sure the region contain
   whole lines. Then we operate the expanded region. NUM is ignored.

\(fn &optional NUM)" t nil)

(autoload 'evilnc-copy-to-line "evil-nerd-commenter/evil-nerd-commenter" "\
Copy from the current line to the LINENUM line, for non-evil user only

\(fn &optional LINENUM)" t nil)

(autoload 'evilnc-kill-to-line "evil-nerd-commenter/evil-nerd-commenter" "\
Kill from the current line to the LINENUM line, for non-evil user only

\(fn &optional LINENUM)" t nil)

(autoload 'evilnc-version "evil-nerd-commenter/evil-nerd-commenter" "\


\(fn)" t nil)

(autoload 'evilnc-default-hotkeys "evil-nerd-commenter/evil-nerd-commenter" "\
Set the hotkeys of evil-nerd-comment

\(fn)" t nil)

;;;***

;;;### (autoloads nil "evil-surround/evil-surround" "evil-surround/evil-surround.el"
;;;;;;  (21729 13966 0 0))
;;; Generated autoloads from evil-surround/evil-surround.el

(autoload 'evil-surround-delete "evil-surround/evil-surround" "\
Delete the surrounding delimiters represented by CHAR.
Alternatively, the text to delete can be represented with
the overlays OUTER and INNER, where OUTER includes the delimiters
and INNER excludes them. The intersection (i.e., difference)
between these overlays is what is deleted.

\(fn CHAR &optional OUTER INNER)" t nil)

(autoload 'evil-surround-change "evil-surround/evil-surround" "\
Change the surrounding delimiters represented by CHAR.
Alternatively, the text to delete can be represented with the
overlays OUTER and INNER, which are passed to `evil-surround-delete'.

\(fn CHAR &optional OUTER INNER)" t nil)

(autoload 'evil-surround-mode "evil-surround/evil-surround" "\
Buffer-local minor mode to emulate surround.vim.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-evil-surround-mode "evil-surround/evil-surround" "\
Enable evil-surround-mode in the current buffer.

\(fn)" nil nil)

(autoload 'turn-off-evil-surround-mode "evil-surround/evil-surround" "\
Disable evil-surround-mode in the current buffer.

\(fn)" nil nil)

(defvar global-evil-surround-mode nil "\
Non-nil if Global-Evil-Surround mode is enabled.
See the command `global-evil-surround-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-surround-mode'.")

(custom-autoload 'global-evil-surround-mode "evil-surround/evil-surround" nil)

(autoload 'global-evil-surround-mode "evil-surround/evil-surround" "\
Toggle Evil-Surround mode in all buffers.
With prefix ARG, enable Global-Evil-Surround mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Surround mode is enabled in all buffers where
`turn-on-evil-surround-mode' would do it.
See `evil-surround-mode' for more information on Evil-Surround mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "evil/evil" "evil/evil.el" (21729 13801 0 0))
;;; Generated autoloads from evil/evil.el

(defvar evil-mode nil "\
Non-nil if Evil mode is enabled.
See the command `evil-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `evil-mode'.")

(custom-autoload 'evil-mode "evil/evil" nil)

(autoload 'evil-mode "evil/evil" "\
Toggle Evil-Local mode in all buffers.
With prefix ARG, enable Evil mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Local mode is enabled in all buffers where
`evil-initialize' would do it.
See `evil-local-mode' for more information on Evil-Local mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "find-file-in-project/find-file-in-project"
;;;;;;  "find-file-in-project/find-file-in-project.el" (21729 17392
;;;;;;  0 0))
;;; Generated autoloads from find-file-in-project/find-file-in-project.el

(autoload 'find-file-in-project "find-file-in-project/find-file-in-project" "\
Prompt with a completing list of all files in the project to find one.

The project's scope is defined as the first directory containing
an `.emacs-project' file.  You can override this by locally
setting the variable `ffip-project-root'.

\(fn)" t nil)

(defalias 'ffip 'find-file-in-project)

(put 'ffip-patterns 'safe-local-variable 'listp)

(put 'ffip-project-file 'safe-local-variable 'stringp)

(put 'ffip-project-root 'safe-local-variable 'stringp)

(put 'ffip-limit 'safe-local-variable 'integerp)

;;;***

;;;### (autoloads nil "flycheck/flycheck" "flycheck/flycheck.el"
;;;;;;  (21729 15227 0 0))
;;; Generated autoloads from flycheck/flycheck.el

(autoload 'flycheck-info "flycheck/flycheck" "\
Open the Flycheck manual.

\(fn)" t nil)

(autoload 'flycheck-mode "flycheck/flycheck" "\
Minor mode for on-the-fly syntax checking.

When called interactively, toggle `flycheck-mode'.  With prefix
ARG, enable `flycheck-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `flycheck-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `flycheck-mode'.
Otherwise behave as if called interactively.

In `flycheck-mode' the buffer is automatically syntax-checked
using the first suitable syntax checker from `flycheck-checkers'.
Use `flycheck-select-checker' to select a checker for the current
buffer manually.

\\{flycheck-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-flycheck-mode nil "\
Non-nil if Global-Flycheck mode is enabled.
See the command `global-flycheck-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-flycheck-mode'.")

(custom-autoload 'global-flycheck-mode "flycheck/flycheck" nil)

(autoload 'global-flycheck-mode "flycheck/flycheck" "\
Toggle Flycheck mode in all buffers.
With prefix ARG, enable Global-Flycheck mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Flycheck mode is enabled in all buffers where
`flycheck-mode-on-safe' would do it.
See `flycheck-mode' for more information on Flycheck mode.

\(fn &optional ARG)" t nil)

(autoload 'flycheck-define-error-level "flycheck/flycheck" "\
Define a new error LEVEL with PROPERTIES.

The following PROPERTIES constitute an error level:

`:severity SEVERITY'
     A number denoting the severity of this level.  The higher
     the number, the more severe is this level compared to other
     levels.  Defaults to 0.

     The severity is used by `flycheck-error-level-<' to
     determine the ordering of errors according to their levels.

`:overlay-category CATEGORY'
     A symbol denoting the overlay category to use for error
     highlight overlays for this level.  See Info
     node `(elisp)Overlay Properties' for more information about
     overlay categories.

     A category for an error level overlay should at least define
     the `face' property, for error highlighting.  Other useful
     properties for error level categories are `priority' to
     influence the stacking of multiple error level overlays, and
     `help-echo' to define a default error messages for errors
     without messages.

`:fringe-bitmap BITMAP'
     A fringe bitmap symbol denoting the bitmap to use for fringe
     indicators for this level.  See Info node `(elisp)Fringe
     Bitmaps' for more information about fringe bitmaps,
     including a list of built-in fringe bitmaps.

`:fringe-face FACE'
     A face symbol denoting the face to use for fringe indicators
     for this level.

`:error-list-face FACE'
     A face symbol denoting the face to use for messages of this
     level in the error list.  See `flycheck-list-errors'.

\(fn LEVEL &rest PROPERTIES)" nil nil)

(put 'flycheck-define-error-level 'lisp-indent-function '1)

(autoload 'flycheck-define-command-checker "flycheck/flycheck" "\
Define SYMBOL as syntax checker which runs a command.

Define SYMBOL as generic syntax checker via
`flycheck-define-generic-checker', which uses an external command
to check the buffer.  SYMBOL and DOCSTRING are the same as for
`flycheck-define-generic-checker'.

In addition to the properties understood by
`flycheck-define-generic-checker', the following PROPERTIES
constitute a command syntax checker.  Unless otherwise noted, all
properties are mandatory.  Note that the default `:error-filter'
of command checkers is `flycheck-sanitize-errors'.

`:command COMMAND'
     The command to run for syntax checking.

     COMMAND is a list of the form `(EXECUTABLE [ARG ...])'.

     EXECUTABLE is a string with the executable of this syntax
     checker.  It can be overridden with the variable
     `flycheck-SYMBOL-executable'.  Note that this variable is
     NOT implicitly defined by this function.  Use
     `flycheck-def-executable-var' to define this variable.

     Each ARG is an argument to the executable, either as string,
     or as special symbol or form for
     `flycheck-substitute-argument', which see.

`:error-patterns PATTERNS'
     A list of patterns to parse the output of the `:command'.

     Each ITEM in PATTERNS is a list `(LEVEL SEXP ...)', where
     LEVEL is a Flycheck error level (see
     `flycheck-define-error-level'), followed by one or more RX
     `SEXP's which parse an error of that level and extract line,
     column, file name and the message.

     See `rx' for general information about RX, and
     `flycheck-rx-to-string' for some special RX forms provided
     by Flycheck.

     All patterns are applied in the order of declaration to the
     whole output of the syntax checker.  Output already matched
     by a pattern will not be matched by subsequent patterns.  In
     other words, the first pattern wins.

     This property is optional.  If omitted, however, an
     `:error-parser' is mandatory.

`:error-parser FUNCTION'
     A function to parse errors with.

     The function shall accept three arguments OUTPUT CHECKER
     BUFFER.  OUTPUT is the syntax checker output as string,
     CHECKER the syntax checker that was used, and BUFFER a
     buffer object representing the checked buffer.  The function
     must return a list of `flycheck-error' objects parsed from
     OUTPUT.

     This property is optional.  If omitted, it defaults to
     `flycheck-parse-with-patterns'.  In this case,
     `:error-patterns' is mandatory.

Note that you may not give `:start', `:interrupt', and
`:print-doc' for a command checker.  You can give a custom
`:verify' function, but you should take care to call
`flycheck-verify-command-checker' in a custom `:verify'
function.

\(fn SYMBOL DOCSTRING &rest PROPERTIES)" nil nil)

(put 'flycheck-define-command-checker 'lisp-indent-function '1)

(put 'flycheck-define-command-checker 'doc-string-elt '2)

(autoload 'flycheck-def-config-file-var "flycheck/flycheck" "\
Define SYMBOL as config file variable for CHECKER, with default FILE-NAME.

SYMBOL is declared as customizable variable using `defcustom', to
provide a configuration file for the given syntax CHECKER.
CUSTOM-ARGS are forwarded to `defcustom'.

FILE-NAME is the initial value of the new variable.  If omitted,
the default value is nil.

Use this together with the `config-file' form in the `:command'
argument to `flycheck-define-checker'.

\(fn SYMBOL CHECKER &optional FILE-NAME &rest CUSTOM-ARGS)" nil t)

(put 'flycheck-def-config-file-var 'lisp-indent-function '3)

(autoload 'flycheck-def-option-var "flycheck/flycheck" "\
Define SYMBOL as option variable with INIT-VALUE for CHECKER.

SYMBOL is declared as customizable variable using `defcustom', to
provide an option for the given syntax CHECKER.  INIT-VALUE is
the initial value of the variable, and DOCSTRING is its
docstring.  CUSTOM-ARGS are forwarded to `defcustom'.

Use this together with the `option', `option-list' and
`option-flag' forms in the `:command' argument to
`flycheck-define-checker'.

\(fn SYMBOL INIT-VALUE CHECKER DOCSTRING &rest CUSTOM-ARGS)" nil t)

(put 'flycheck-def-option-var 'lisp-indent-function '3)

(put 'flycheck-def-option-var 'doc-string-elt '4)

;;;***

;;;### (autoloads nil "goto-chg/goto-chg" "goto-chg/goto-chg.el"
;;;;;;  (21729 13784 0 0))
;;; Generated autoloads from goto-chg/goto-chg.el

(autoload 'goto-last-change "goto-chg/goto-chg" "\
Go to the point where the last edit was made in the current buffer.
Repeat the command to go to the second last edit, etc.

To go back to more recent edit, the reverse of this command, use \\[goto-last-change-reverse]
or precede this command with \\[universal-argument] - (minus).

It does not go to the same point twice even if there has been many edits
there. I call the minimal distance between distinguishable edits \"span\".
Set variable `glc-default-span' to control how close is \"the same point\".
Default span is 8.
The span can be changed temporarily with \\[universal-argument] right before \\[goto-last-change]:
\\[universal-argument] <NUMBER> set current span to that number,
\\[universal-argument] (no number) multiplies span by 4, starting with default.
The so set span remains until it is changed again with \\[universal-argument], or the consecutive
repetition of this command is ended by any other command.

When span is zero (i.e. \\[universal-argument] 0) subsequent \\[goto-last-change] visits each and
every point of edit and a message shows what change was made there.
In this case it may go to the same point twice.

This command uses undo information. If undo is disabled, so is this command.
At times, when undo information becomes too large, the oldest information is
discarded. See variable `undo-limit'.

\(fn ARG)" t nil)

(autoload 'goto-last-change-reverse "goto-chg/goto-chg" "\
Go back to more recent changes after \\[goto-last-change] have been used.
See `goto-last-change' for use of prefix argument.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "highlight-indentation/highlight-indentation"
;;;;;;  "highlight-indentation/highlight-indentation.el" (21729 17391
;;;;;;  0 0))
;;; Generated autoloads from highlight-indentation/highlight-indentation.el

(autoload 'highlight-indentation-mode "highlight-indentation/highlight-indentation" "\
Highlight indentation minor mode highlights indentation based on spaces

\(fn &optional ARG)" t nil)

(autoload 'highlight-indentation-set-offset "highlight-indentation/highlight-indentation" "\
Set indentation offset localy in buffer, will prevent
highlight-indentation from trying to guess indentation offset
from major mode

\(fn OFFSET)" t nil)

(autoload 'highlight-indentation-current-column-mode "highlight-indentation/highlight-indentation" "\
Hilight Indentation minor mode displays a vertical bar
corresponding to the indentation of the current line

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "idomenu/idomenu" "idomenu/idomenu.el" (21729
;;;;;;  17395 0 0))
;;; Generated autoloads from idomenu/idomenu.el

(autoload 'idomenu "idomenu/idomenu" "\
Switch to a buffer-local tag from Imenu via Ido.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "js2-mode/js2-imenu-extras" "js2-mode/js2-imenu-extras.el"
;;;;;;  (21729 22725 0 0))
;;; Generated autoloads from js2-mode/js2-imenu-extras.el

(autoload 'js2-imenu-extras-setup "js2-mode/js2-imenu-extras" "\


\(fn)" nil nil)

(autoload 'js2-imenu-extras-mode "js2-mode/js2-imenu-extras" "\
Toggle Imenu support for frameworks and structural patterns.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (21729 22725 0 0))
;;; Generated autoloads from js2-mode/js2-mode.el

(autoload 'js2-minor-mode "js2-mode/js2-mode" "\
Minor mode for running js2 as a background linter.
This allows you to use a different major mode for JavaScript editing,
such as `js-mode', while retaining the asynchronous error/warning
highlighting features of `js2-mode'.

\(fn &optional ARG)" t nil)

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "key-chord/key-chord" "key-chord/key-chord.el"
;;;;;;  (21729 14019 0 0))
;;; Generated autoloads from key-chord/key-chord.el

(autoload 'key-chord-mode "key-chord/key-chord" "\
Toggle key chord mode.
With positive ARG enable the mode. With zero or negative arg disable the mode.
A key chord is two keys that are pressed simultaneously, or one key quickly
pressed twice.

See functions `key-chord-define-global', `key-chord-define-local', and
`key-chord-define' and variables `key-chord-two-keys-delay' and
`key-chord-one-key-delay'.

\(fn ARG)" t nil)

(autoload 'key-chord-define-global "key-chord/key-chord" "\
Define a key-chord of the two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

Note that KEYS defined locally in the current buffer will have precedence.

\(fn KEYS COMMAND)" t nil)

(autoload 'key-chord-define-local "key-chord/key-chord" "\
Locally define a key-chord of the two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

The binding goes in the current buffer's local map,
which in most cases is shared with all other buffers in the same major mode.

\(fn KEYS COMMAND)" t nil)

(autoload 'key-chord-define "key-chord/key-chord" "\
Define in KEYMAP, a key-chord of the two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

\(fn KEYMAP KEYS COMMAND)" nil nil)

;;;***

;;;### (autoloads nil "let-alist/let-alist" "let-alist/let-alist.el"
;;;;;;  (21729 15218 0 0))
;;; Generated autoloads from let-alist/let-alist.el

(autoload 'let-alist "let-alist/let-alist" "\
Let-bind dotted symbols to their cdrs in ALIST and execute BODY.
Dotted symbol is any symbol starting with a `.'.  Only those present
in BODY are let-bound and this search is done at compile time.

For instance, the following code

  (let-alist alist
    (if (and .title .body)
        .body
      .site
      .site.contents))

essentially expands to

  (let ((.title (cdr (assq 'title alist)))
        (.body  (cdr (assq 'body alist)))
        (.site  (cdr (assq 'site alist)))
        (.site.contents (cdr (assq 'contents (cdr (assq 'site alist))))))
    (if (and .title .body)
        .body
      .site
      .site.contents))

If you nest `let-alist' invocations, the inner one can't access
the variables of the outer one. You can, however, access alists
inside the original alist by using dots inside the symbol, as
displayed in the example above.

\(fn ALIST &rest BODY)" nil t)

(put 'let-alist 'lisp-indent-function '1)

;;;***

;;;### (autoloads nil "monokai-theme/monokai-theme" "monokai-theme/monokai-theme.el"
;;;;;;  (21729 15124 0 0))
;;; Generated autoloads from monokai-theme/monokai-theme.el

(when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads nil "pkg-info/pkg-info" "pkg-info/pkg-info.el"
;;;;;;  (21729 15220 0 0))
;;; Generated autoloads from pkg-info/pkg-info.el

(autoload 'pkg-info-library-original-version "pkg-info/pkg-info" "\
Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-library-version "pkg-info/pkg-info" "\
Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-original-version "pkg-info/pkg-info" "\
Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-version "pkg-info/pkg-info" "\
Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-package-version "pkg-info/pkg-info" "\
Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

\(fn PACKAGE &optional SHOW)" t nil)

(autoload 'pkg-info-version-info "pkg-info/pkg-info" "\
Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

\(fn LIBRARY &optional PACKAGE SHOW)" t nil)

;;;***

;;;### (autoloads nil "projectile/helm-projectile" "projectile/helm-projectile.el"
;;;;;;  (21729 18064 0 0))
;;; Generated autoloads from projectile/helm-projectile.el

(defvar helm-projectile-fuzzy-match t "\
Enable fuzzy matching for Helm Projectile commands.
This needs to be set before loading helm-projectile.")

(custom-autoload 'helm-projectile-fuzzy-match "projectile/helm-projectile" t)

(autoload 'helm-projectile-find-other-file "projectile/helm-projectile" "\
Switch between files with the same name but different extensions using Helm.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

\(fn &optional FLEX-MATCHING)" t nil)

(autoload 'helm-projectile-on "projectile/helm-projectile" "\
Turn on helm-projectile key bindings.

\(fn)" t nil)

(autoload 'helm-projectile-off "projectile/helm-projectile" "\
Turn off helm-projectile key bindings.

\(fn)" t nil)

(autoload 'helm-projectile-grep "projectile/helm-projectile" "\
Helm version of projectile-grep.

\(fn)" t nil)

(autoload 'helm-projectile-ack "projectile/helm-projectile" "\
Helm version of projectile-ack.

\(fn)" t nil)

(autoload 'helm-projectile-ag "projectile/helm-projectile" "\
Helm version of projectile-ag.

\(fn)" t nil)

(autoload 'helm-projectile "projectile/helm-projectile" "\
Use projectile with Helm instead of ido.

With a prefix ARG invalidates the cache first.
If invoked outside of a project, displays a list of known projects to jump.

\(fn &optional ARG)" t nil)

(eval-after-load 'projectile '(progn (define-key projectile-command-map (kbd "h") 'helm-projectile)))

;;;***

;;;### (autoloads nil "projectile/persp-projectile" "projectile/persp-projectile.el"
;;;;;;  (21729 18064 0 0))
;;; Generated autoloads from projectile/persp-projectile.el

(autoload 'projectile-persp-switch-project "projectile/persp-projectile" "\
Switch to a project or perspective we have visited before.
If the perspective of corresponding project does not exist, this
function will call `persp-switch' to create one and switch to
that before `projectile-switch-project' invokes
`projectile-switch-project-action'.

Otherwise, this function calls `persp-switch' to switch to an
existing perspective of the project unless we're already in that
perspective in which case `projectile-switch-project' is called.

\(fn PROJECT-TO-SWITCH)" t nil)

;;;***

;;;### (autoloads nil "projectile/projectile" "projectile/projectile.el"
;;;;;;  (21729 18064 0 0))
;;; Generated autoloads from projectile/projectile.el

(autoload 'projectile-cache-current-file "projectile/projectile" "\
Add the currently visited file to the cache.

\(fn)" t nil)

(autoload 'projectile-switch-to-buffer "projectile/projectile" "\
Switch to a project buffer.

\(fn)" t nil)

(autoload 'projectile-switch-to-buffer-other-window "projectile/projectile" "\
Switch to a project buffer and show it in another window.

\(fn)" t nil)

(autoload 'projectile-display-buffer "projectile/projectile" "\
Display a project buffer in another window without selecting it.

\(fn)" t nil)

(autoload 'projectile-project-buffers-other-buffer "projectile/projectile" "\
Switch to the most recently selected buffer project buffer.
Only buffers not visible in windows are returned.

\(fn)" t nil)

(autoload 'projectile-multi-occur "projectile/projectile" "\
Do a `multi-occur' in the project's buffers.

\(fn)" t nil)

(autoload 'projectile-find-file-dwim "projectile/projectile" "\
Jump to a project's files using completion based on context.

With a prefix ARG invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file' still switches to \"projectile/projectile.el\" immediately
 because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename like
 \"projectile/a\", a list of files with character 'a' in that directory is presented.

- If it finds nothing, display a list of all files in project for selecting.

\(fn &optional ARG)" t nil)

(autoload 'projectile-find-file-dwim-other-window "projectile/projectile" "\
Jump to a project's files using completion based on context in other window.

With a prefix ARG invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file' still switches to \"projectile/projectile.el\"
immediately because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename
like \"projectile/a\", a list of files with character 'a' in that directory
is presented.

- If it finds nothing, display a list of all files in project for selecting.

\(fn &optional ARG)" t nil)

(autoload 'projectile-find-file "projectile/projectile" "\
Jump to a project's file using completion.
With a prefix ARG invalidates the cache first.

\(fn &optional ARG)" t nil)

(autoload 'projectile-find-file-other-window "projectile/projectile" "\
Jump to a project's file using completion and show it in another window.

With a prefix ARG invalidates the cache first.

\(fn &optional ARG)" t nil)

(autoload 'projectile-find-implementation-or-test-other-window "projectile/projectile" "\
Open matching implementation or test file in other window.

\(fn)" t nil)

(autoload 'projectile-toggle-between-implementation-and-test "projectile/projectile" "\
Toggle between an implementation file and its test file.

\(fn)" t nil)

(autoload 'projectile-regenerate-tags "projectile/projectile" "\
Regenerate the project's [e|g]tags.

\(fn)" t nil)

(autoload 'projectile-find-tag "projectile/projectile" "\
Find tag in project.

\(fn)" t nil)

(autoload 'projectile-run-command-in-root "projectile/projectile" "\
Invoke `execute-extended-command' in the project's root.

\(fn)" t nil)

(autoload 'projectile-run-shell-command-in-root "projectile/projectile" "\
Invoke `shell-command' in the project's root.

\(fn)" t nil)

(autoload 'projectile-run-async-shell-command-in-root "projectile/projectile" "\
Invoke `async-shell-command' in the project's root.

\(fn)" t nil)

(autoload 'projectile-kill-buffers "projectile/projectile" "\
Kill all project buffers.

\(fn)" t nil)

(autoload 'projectile-save-project-buffers "projectile/projectile" "\
Save all project buffers.

\(fn)" t nil)

(autoload 'projectile-dired "projectile/projectile" "\
Open `dired' at the root of the project.

\(fn)" t nil)

(autoload 'projectile-vc "projectile/projectile" "\
Open `vc-dir' at the root of the project.

For git projects `magit-status-internal' is used if available.

\(fn &optional PROJECT-ROOT)" t nil)

(autoload 'projectile-recentf "projectile/projectile" "\
Show a list of recently visited files in a project.

\(fn)" t nil)

(autoload 'projectile-find-file-in-known-projects "projectile/projectile" "\
Jump to a file in any of the known projects.

\(fn)" t nil)

(autoload 'projectile-cleanup-known-projects "projectile/projectile" "\
Remove known projects that don't exist anymore.

\(fn)" t nil)

(autoload 'projectile-clear-known-projects "projectile/projectile" "\
Clear both `projectile-known-projects' and `projectile-known-projects-file'.

\(fn)" t nil)

(autoload 'projectile-remove-current-project-from-known-projects "projectile/projectile" "\
Remove the current project from the list of known projects.

\(fn)" t nil)

(autoload 'projectile-commander "projectile/projectile" "\
Execute a Projectile command with a single letter.
The user is prompted for a single character indicating the action to invoke.
The `?' character describes then
available actions.

See `def-projectile-commander-method' for defining new methods.

\(fn)" t nil)

(defvar projectile-mode-line '(:eval (format " Projectile[%s]" (projectile-project-name))) "\
Mode line ligher for Projectile.

The value of this variable is a mode line template as in
`mode-line-format'.  See Info Node `(elisp)Mode Line Format' for
details about mode line templates.

Customize this variable to change how Projectile displays its
status in the mode line.  The default value displays the project
name.  Set this variable to nil to disable the mode line
entirely.")

(custom-autoload 'projectile-mode-line "projectile/projectile" t)

(autoload 'projectile-mode "projectile/projectile" "\
Minor mode to assist project management and navigation.

When called interactively, toggle `projectile-mode'.  With prefix
ARG, enable `projectile-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `projectile-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `projectile-mode'.
Otherwise behave as if called interactively.

\\{projectile-mode-map}

\(fn &optional ARG)" t nil)

(defvar projectile-global-mode nil "\
Non-nil if Projectile-Global mode is enabled.
See the command `projectile-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `projectile-global-mode'.")

(custom-autoload 'projectile-global-mode "projectile/projectile" nil)

(autoload 'projectile-global-mode "projectile/projectile" "\
Toggle Projectile mode in all buffers.
With prefix ARG, enable Projectile-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Projectile mode is enabled in all buffers where
`projectile-mode' would do it.
See `projectile-mode' for more information on Projectile mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "pyvenv/pyvenv" "pyvenv/pyvenv.el" (21729 17397
;;;;;;  0 0))
;;; Generated autoloads from pyvenv/pyvenv.el

(autoload 'pyvenv-activate "pyvenv/pyvenv" "\
Activate the virtual environment in DIRECTORY.

\(fn DIRECTORY)" t nil)

(autoload 'pyvenv-deactivate "pyvenv/pyvenv" "\
Deactivate any current virtual environment.

\(fn)" t nil)

(autoload 'pyvenv-workon "pyvenv/pyvenv" "\
Activate a virtual environment from $WORKON_HOME.

\(fn NAME)" t nil)

(defvar pyvenv-mode nil "\
Non-nil if Pyvenv mode is enabled.
See the command `pyvenv-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pyvenv-mode'.")

(custom-autoload 'pyvenv-mode "pyvenv/pyvenv" nil)

(autoload 'pyvenv-mode "pyvenv/pyvenv" "\
Global minor mode for pyvenv.

Will show the current virtualenv in the mode line, and respect a
`pyvenv-workon' setting in files.

\(fn &optional ARG)" t nil)

(defvar pyvenv-tracking-mode nil "\
Non-nil if Pyvenv-Tracking mode is enabled.
See the command `pyvenv-tracking-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pyvenv-tracking-mode'.")

(custom-autoload 'pyvenv-tracking-mode "pyvenv/pyvenv" nil)

(autoload 'pyvenv-tracking-mode "pyvenv/pyvenv" "\
Global minor mode to track the current virtualenv.

When this mode is active, pyvenv will activate a buffer-specific
virtualenv whenever the user switches to a buffer with a
buffer-local `pyvenv-workon' or `pyvenv-activate' variable.

\(fn &optional ARG)" t nil)

(autoload 'pyvenv-restart-python "pyvenv/pyvenv" "\
Restart Python inferior processes.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "tern/emacs/tern" "tern/emacs/tern.el" (21729
;;;;;;  22014 0 0))
;;; Generated autoloads from tern/emacs/tern.el

(autoload 'tern-use-server "tern/emacs/tern" "\


\(fn PORT SERVER)" t nil)

(autoload 'tern-mode "tern/emacs/tern" "\
Minor mode binding to the Tern JavaScript analyzer

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "tern/emacs/tern-auto-complete" "tern/emacs/tern-auto-complete.el"
;;;;;;  (21729 22014 0 0))
;;; Generated autoloads from tern/emacs/tern-auto-complete.el

(autoload 'tern-ac-setup "tern/emacs/tern-auto-complete" "\
Setup auto-complete for tern-mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "undo-tree/undo-tree" "undo-tree/undo-tree.el"
;;;;;;  (21729 13780 0 0))
;;; Generated autoloads from undo-tree/undo-tree.el

(autoload 'undo-tree-mode "undo-tree/undo-tree" "\
Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-undo-tree-mode nil "\
Non-nil if Global-Undo-Tree mode is enabled.
See the command `global-undo-tree-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.")

(custom-autoload 'global-undo-tree-mode "undo-tree/undo-tree" nil)

(autoload 'global-undo-tree-mode "undo-tree/undo-tree" "\
Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global-Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "web-mode/web-mode" "web-mode/web-mode.el"
;;;;;;  (21729 21672 0 0))
;;; Generated autoloads from web-mode/web-mode.el

(autoload 'web-mode "web-mode/web-mode" "\
Major mode for editing web templates.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "yasnippet/yasnippet" "yasnippet/yasnippet.el"
;;;;;;  (21729 17388 0 0))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-complete/auto-complete-pkg.el" "company-mode/company-capf.el"
;;;;;;  "company-mode/company-clang.el" "company-mode/company-cmake.el"
;;;;;;  "company-mode/company-eclim.el" "company-mode/company-ropemacs.el"
;;;;;;  "company-mode/company-template.el" "company-mode/company-tests.el"
;;;;;;  "dash/dash-functional.el" "dash/dash.el" "el-get/el-get-autoloading.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "elpy/elpy-pkg.el"
;;;;;;  "elpy/elpy-refactor.el" "epl/epl.el" "evil-matchit/evil-matchit-pkg.el"
;;;;;;  "evil-nerd-commenter/evil-nerd-commenter-operator.el" "evil-nerd-commenter/evil-nerd-commenter-pkg.el"
;;;;;;  "evil/evil-command-window.el" "evil/evil-commands.el" "evil/evil-common.el"
;;;;;;  "evil/evil-core.el" "evil/evil-digraphs.el" "evil/evil-ex.el"
;;;;;;  "evil/evil-integration.el" "evil/evil-macros.el" "evil/evil-maps.el"
;;;;;;  "evil/evil-pkg.el" "evil/evil-repeat.el" "evil/evil-search.el"
;;;;;;  "evil/evil-states.el" "evil/evil-tests.el" "evil/evil-types.el"
;;;;;;  "evil/evil-vars.el" "f/f.el" "flycheck/flycheck-ert.el" "fuzzy/fuzzy.el"
;;;;;;  "linum-relative/linum-relative.el" "popup/popup.el" "s/s.el"
;;;;;;  "yasnippet/yasnippet-debug.el" "yasnippet/yasnippet-tests.el")
;;;;;;  (21729 22728 469320 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
