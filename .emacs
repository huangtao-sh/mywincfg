;; 设置编码
(set-language-environment 'Chinese-GB)

;; default-buffer-file-coding-system变量在emacs23.2之后已被废弃，使用buffer-file-coding-system代替
(set-default buffer-file-coding-system 'utf-8-unix)
(setq buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(setq-default pathname-coding-system 'euc-cn)
(setq file-name-coding-system 'euc-cn)
(set-terminal-coding-system 'euc-cn)
;; 另外建议按下面的先后顺序来设置中文编码识别方式。
;; 重要提示:写在最后一行的，实际上最优先使用; 最前面一行，反而放到最后才识别。
;; utf-16le-with-signature 相当于 Windows 下的 Unicode 编码，这里也可写成
;; utf-16 (utf-16 实际上还细分为 utf-16le, utf-16be, utf-16le-with-signature等多种)
(prefer-coding-system 'cp950)
(prefer-coding-system 'gb2312)
(prefer-coding-system 'cp936)
(prefer-coding-system 'gb18030)
;(prefer-coding-system 'utf-16le-with-signature)
(prefer-coding-system 'utf-16)
;; 新建文件使用utf-8-unix方式
;; 如果不写下面两句，只写
;; (prefer-coding-system 'utf-8)
;; 这一句的话，新建文件以utf-8编码，行末结束符平台相关
(prefer-coding-system 'utf-8-dos)
(prefer-coding-system 'utf-8-unix)

;; 设置编码
;;(set-language-environment 'Chinese-GB)
;;(setq default-buffer-file-coding-system 'utf-8)
;;(prefer-coding-system 'utf-8)
;; 设置字体
(set-default-font "YaHei Consolas Hybrid-12")

;;设置Python 模式
(add-to-list 'load-path "~/.emacs.d/python-mode.el-6.1.3")
(setq py-intsll-directory "~/.emacs.d/python-mode.el-6.1.3")
(add-to-list 'load-path "~/.emacs.d")
(require 'python-mode)

;;

(global-linum-mode 1)
(add-hook 'org-mode-hook
      (lambda ()
        (setq truncate-lines nil)))
;;
(setq auto-save-default nil) 
(setq make-backup-files nil)
(setq x-select-enable-clipboard t)
;;
(add-to-list 'load-path "~/.emacs.d/emacs")
(require 'myorg)
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
