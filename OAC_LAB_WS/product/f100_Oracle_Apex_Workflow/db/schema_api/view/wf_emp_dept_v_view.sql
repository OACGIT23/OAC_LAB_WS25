CREATE OR REPLACE FORCE EDITIONABLE VIEW "WF_EMP_DEPT_V" ("EMPNO", "ENAME", "JOB", "MGR", "HIREDATE", "SAL", "COMM", "DEPTNO", "DNAME", "LOC") AS 
  select e.empno
,      e.ename
,      e.job
,      (select m.ename from WF_EMPLOYEE_DET m where e.mgr = m.empno) mgr
,      e.hiredate
,      e.sal
,      e.comm
,      d.deptno
,      d.dname
,      d.loc
from WF_EMPLOYEE_DET e
,    WF_DEPT d
where e.deptno = d.deptno (+);