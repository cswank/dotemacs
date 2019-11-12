;;; my-jira --- Summary
;;; setup org-jira stuff
;;; Commentary:

;;; Code:

(setq jiralib-url "https://parsyl.atlassian.net")

(setq org-jira-custom-jqls
  '(
    (:jql "project IN (PLAT)
and status IN ('Sprint Queue', 'Code Review' 'Done' 'IN TEST' 'In Dev')
AND (labels IN ('webapp' 'backend'))
order by priority, created DESC "
          :limit 20
          :filename "eng-priority-items")
    ))

(provide 'my-jira)
;;; my-jira.el ends here
