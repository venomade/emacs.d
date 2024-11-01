;; Set Fonts and their size
(defvar customfontsettings
  '((mono . "Iosevka")
    (variabl . "RobotoCondensed")
    (size . 14)))

(set-face-attribute 'variable-pitch nil
                    :font (cdr (assoc 'variabl customfontsettings))
                    :height (* (cdr (assoc 'size customfontsettings)) 10)
                    :weight 'regular)

(set-face-attribute 'fixed-pitch nil
                    :font (cdr (assoc 'mono customfontsettings))
                    :height (* (cdr (assoc 'size customfontsettings)) 10)
                    :weight 'regular)

(set-face-attribute 'default nil
                    :font (cdr (assoc 'mono customfontsettings))
                    :height (* (cdr (assoc 'size customfontsettings)) 10)
                    :weight 'regular)


(add-to-list 'default-frame-alist
             `(font . ,(concat (cdr (assoc 'mono customfontsettings)) "-" (number-to-string (cdr (assoc 'size customfontsettings))))))

(set-face-attribute 'font-lock-comment-face nil
                    :slant 'italic)

(set-face-attribute 'font-lock-keyword-face nil
                    :slant 'italic)

;; Set mode-line font
(set-face-attribute 'mode-line nil :inherit 'variable-pitch)
(set-face-attribute 'mode-line-inactive nil :inherit 'variable-pitch)

;; Set Usable Ligatures
(dolist (char/ligature-re
     `((?-  . ,(rx (or (or "-->" "-<<" "->>" "-|" "-~" "-<" "->") (+ "-"))))
       (?/  . ,(rx (or (or "/==" "/=" "/>" "/**" "/*") (+ "/"))))
       (?*  . ,(rx (or (or "*>" "*/") (+ "*"))))
       (?<  . ,(rx (or (or "<<=" "<<-" "<|||" "<==>" "<!--" "<=>" "<||" "<|>" "<-<"
	 "<==" "<=<" "<-|" "<~>" "<=|" "<~~" "<$>" "<+>" "</>"
	 "<*>" "<->" "<=" "<|" "<:" "<>"  "<$" "<-" "<~" "<+"
	 "</" "<*")
	   (+ "<"))))
       (?:  . ,(rx (or (or ":?>" "::=" ":>" ":<" ":?" ":=") (+ ":"))))
       (?=  . ,(rx (or (or "=>>" "==>" "=/=" "=!=" "=>" "=:=") (+ "="))))
       (?!  . ,(rx (or (or "!==" "!=") (+ "!"))))
       (?>  . ,(rx (or (or ">>-" ">>=" ">=>" ">]" ">:" ">-" ">=") (+ ">"))))
       (?&  . ,(rx (+ "&")))
       (?|  . ,(rx (or (or "|->" "|||>" "||>" "|=>" "||-" "||=" "|-" "|>"
	 "|]" "|}" "|=")
	   (+ "|"))))
       (?.  . ,(rx (or (or ".?" ".=" ".-" "..<") (+ "."))))
       (?+  . ,(rx (or "+>" (+ "+"))))
       (?\[ . ,(rx (or "[<" "[|")))
       (?\{ . ,(rx "{|"))
       (?\? . ,(rx (or (or "?." "?=" "?:") (+ "?"))))
       (?#  . ,(rx (or (or "#_(" "#[" "#{" "#=" "#!" "#:" "#_" "#?" "#(")
	   (+ "#"))))
       (?\; . ,(rx (+ ";")))
       (?_  . ,(rx (or "_|_" "__")))
       (?~  . ,(rx (or "~~>" "~~" "~>" "~-" "~@")))
       (?$  . ,(rx "$>"))
       (?^  . ,(rx "^="))
       (?\] . ,(rx "]#"))))
    (let ((char (car char/ligature-re))
    (ligature-re (cdr char/ligature-re)))
(set-char-table-range composition-function-table char
	  `([,ligature-re 0 font-shape-gstring]))))

;; Font Zooming
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
