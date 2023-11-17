--WITH DEP_SALARY AS (
SELECT CONCAT(FIRST_NAME,last_name) AS EMPLOYEE_NAME,EMPLOYEE_ID,D.DEPARTMENT_ID,DEPARTMENT_NAME,SUM(SALARY) AS EMP_SALARY
FROM {{ref('emp')}} E , {{ref('department')}} D
WHERE E.DEPARTMENT_ID=D.DEPARTMENT_ID 
GROUP BY EMPLOYEE_NAME,EMPLOYEE_ID,D.DEPARTMENT_ID,DEPARTMENT_NAME

--SELECT * FROM DEP_SALARY WHERE EMP_SALARY>80000