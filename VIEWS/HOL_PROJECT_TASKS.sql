--------------------------------------------------------
--  DDL for View HOL_PROJECT_TASKS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "WKSP_OACLABWS"."HOL_PROJECT_TASKS" ("PROJECT_ID", "PROJECT_ROW_VERSION", "PROJECT_NAME", "PROJECT_LEAD", "BUDGET", "STATUS", "COMPLETED_DATE", "PROJECT_DESCRIPTION", "PROJECT_CREATED", "PROJECT_CREATED_BY", "PROJECT_UPDATED", "PROJECT_UPDATED_BY", "TASK_ID", "TASK_ROW_VERSION", "TASK_NAME", "ASSIGNEE", "MILESTONE_ID", "START_DATE", "END_DATE", "COST", "TASK_DESCRIPTION", "IS_COMPLETE_YN", "TASK_CREATED", "TASK_CREATED_BY", "TASK_UPDATED", "TASK_UPDATED_BY") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  select  
    projects.id                                        project_id, 
    projects.row_version                               project_row_version, 
    projects.name                                      project_name, 
    projects.project_lead                              project_lead, 
    projects.budget                                    budget, 
    projects.status                                    status, 
    projects.completed_date                            completed_date, 
    projects.description                               project_description, 
    projects.created                                   project_created, 
    projects.created_by                                project_created_by, 
    projects.updated                                   project_updated, 
    projects.updated_by                                project_updated_by, 
    tasks.id                                           task_id, 
    tasks.row_version                                  task_row_version, 
    tasks.name                                         task_name, 
    tasks.assignee                                     assignee, 
    tasks.milestone_id                                 milestone_id, 
    tasks.start_date                                   start_date, 
    tasks.end_date                                     end_date, 
    tasks.cost                                         cost, 
    tasks.description                                  task_description, 
    tasks.is_complete_yn                               is_complete_yn, 
    tasks.created                                      task_created, 
    tasks.created_by                                   task_created_by, 
    tasks.updated                                      task_updated, 
    tasks.updated_by                                   task_updated_by 
from  
    hol_projects projects, 
    hol_tasks tasks 
where 
    tasks.project_id(+) = projects.id
;
