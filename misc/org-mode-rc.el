(global-set-key (kbd "C-x a") 'org-agenda)

(setq org-agenda-files (list "~/Documents/Agenda/"))

(setq org-export-backends '(md))

(setq org-agenda-custom-commands
      '(("u" "Unscheduled Personal"
         tags "+personal-SCHEDULED={.+}-DEADLINE={.+}/!+TODO"
         ((org-agenda-sorting-strategy '(priority-down))))

        ("p" "Personal Tasks"
         tags-todo "+personal")

        ("P" "Personal Agenda"
         ((agenda "" ((org-agenda-tag-filter-preset '("+personal"))))))

        ("w" "Work Tasks"
         tags-todo "+work")

        ("W" "Work Agenda"
         ((agenda "" ((org-agenda-tag-filter-preset '("+work"))))))
      ))
