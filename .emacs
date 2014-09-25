;; ���ñ���
(set-language-environment 'Chinese-GB)

;; default-buffer-file-coding-system������emacs23.2֮���ѱ�������ʹ��buffer-file-coding-system����
(set-default buffer-file-coding-system 'utf-8-unix)
(setq buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(setq-default pathname-coding-system 'euc-cn)
(setq file-name-coding-system 'euc-cn)
(set-terminal-coding-system 'euc-cn)
;; ���⽨�鰴������Ⱥ�˳�����������ı���ʶ��ʽ��
;; ��Ҫ��ʾ:д�����һ�еģ�ʵ����������ʹ��; ��ǰ��һ�У������ŵ�����ʶ��
;; utf-16le-with-signature �൱�� Windows �µ� Unicode ���룬����Ҳ��д��
;; utf-16 (utf-16 ʵ���ϻ�ϸ��Ϊ utf-16le, utf-16be, utf-16le-with-signature�ȶ���)
(prefer-coding-system 'cp950)
(prefer-coding-system 'gb2312)
(prefer-coding-system 'cp936)
(prefer-coding-system 'gb18030)
;(prefer-coding-system 'utf-16le-with-signature)
(prefer-coding-system 'utf-16)
;; �½��ļ�ʹ��utf-8-unix��ʽ
;; �����д�������䣬ֻд
;; (prefer-coding-system 'utf-8)
;; ��һ��Ļ����½��ļ���utf-8���룬��ĩ������ƽ̨���
(prefer-coding-system 'utf-8-dos)
(prefer-coding-system 'utf-8-unix)

;; ���ñ���
;;(set-language-environment 'Chinese-GB)
;;(setq default-buffer-file-coding-system 'utf-8)
;;(prefer-coding-system 'utf-8)
;; ��������
(set-default-font "YaHei Consolas Hybrid-12")

;;����Python ģʽ
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
