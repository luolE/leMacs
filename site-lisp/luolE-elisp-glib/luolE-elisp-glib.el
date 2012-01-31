
(defun get-files-recursive (dir reg)
  "�ݹ��ȡָ��dirĿ¼������reg����ʽ�ĵ������ļ��б�"
  (let (files result)
    (if (not (file-directory-p dir))
        ;; �� dir ����Ŀ¼��ʱ�򣬷��ؿ� list
        '()
      ;; get the files with full-name in directory
      (setq files (directory-files dir t))
      (setq result '())
      (dolist (file files)
        (cond ((file-regular-p file)
               (when (string-match
                      reg
                      (file-name-nondirectory file))
                 (push file result)))

              ((file-directory-p file)

               ;; dont open . and .., and dont open .XXXX hidden directory.
               ;; open . and .. cause loop.
               (unless (equal (aref (file-name-nondirectory file) 0) ?.)
                 (let ((sub-dir (get-files-recursive file reg)))
                   (when sub-dir
                     (dolist (item sub-dir)
                       (push item result))))))))
      result)))

;; ;;;;;;;;;;;;;;;;;;;; FILE ENDS HERE ;;;;;;;;;;;;;;;;;;;;
(provide 'luolE-elisp-glib)