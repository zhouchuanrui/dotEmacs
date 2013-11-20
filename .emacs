;;Change Logs
;;Time-stamp: <2013-07-10 11:53:58 ZhouChuanRui>
;;<2012-12-12 15:32:35 ZhouChuanRui>: 增加63-71
;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(time-stamp-format "%:y-%02m-%02d %02H:%02M:%02S ZhouChuanRui")
 '(verilog-auto-sense-defines-constant t)
 '(verilog-auto-sense-include-inputs nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;auto complete的配置
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)

;;(auto-complete-mode t)
;;打开verilog文件的时候同时打开auto complete mode 
(add-hook 'verilog-mode-hook
	  (lambda () (auto-complete-mode)))

;;color theme 配置
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
;;(color-theme-goldenrod)
;;(color-theme-kingsajz)
;;(color-theme-arjen)
;;选择一个主题
(color-theme-robin-hood)

;;显示行号
(global-linum-mode t)

;;保存文件时刷新time stamp
(add-hook 'before-save-hook 'time-stamp)

;;标题栏显示
(setq frame-title-format "Ignorance is a rare belssing~~~@ %f")

(tool-bar-mode -1)
;;(setq tool-bar-mode nil)
(menu-bar-mode -1)
(setq inhibit-startup-message t)  ;;开机不进入欢迎页

;;highlight-tail mode
;;(require 'highlight-tail)
(setq highlight-tail-colors
      '(("black" . 0)
	("#bc2525" . 25)
	("black" . 66)))
;;(highlight-tail-mode t)


;;org-mode configuration
(setq org-hide-leading-stars t)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)
;;org mode 自动折行
(add-hook 'org-mode-hook 
	  (lambda () (setq truncate-lines nil)))

;;;;;;;;;;;;;;;;;
;;M-1 显示/隐藏菜单栏 ;; M-x menu-bar-mode
(global-set-key (kbd "M-1") 'menu-bar-mode)
;;M-2 显示/隐工具单栏 ;; M-x tool-bar-mode
(global-set-key (kbd "M-2") 'tool-bar-mode)
;;显示时间 
;;(display-time)
;;只渲染当前屏幕语法高亮，加快显示速度
(setq font-lock-maximum-decoration t)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;;(when (load ))

(set-face-attribute 'default nil :font "Consolas 10")

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font(frame-parameter nil 'font)
		   charset 
		   (font-spec :family "Microsoft Yahei" :size 12)))

;;;set autopair for the brackets
(setq skeleton-pair t)
(global-set-key "(" 'skeleton-pair-insert-maybe)
(global-set-key "{" 'skeleton-pair-insert-maybe)
(global-set-key "[" 'skeleton-pair-insert-maybe)
(global-set-key "<" 'skeleton-pair-insert-maybe)
(global-set-key "'" 'skeleton-pair-insert-maybe)
;(global-set-key "/*" 'skeleton-pair-insert-maybe)
;(global-set-key ""\" 'skeleton-pair-insert-maybe)
;(global-set-key "'" 'skeleton-pair-insert-maybe)
; (require 'autopair)

;;use <c-w> to back kill a word
(global-set-key (kbd "C-w") 'backward-kill-word)
;;use <c-x> <c-k> to do what <c-w> used to do
(global-set-key (kbd "C-x C-k") 'kill-region)

