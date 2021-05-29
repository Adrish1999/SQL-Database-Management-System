/*Display the grade of the employee named 'MARTIN'.*/

SELECT T1.GRADE
FROM `office`.salgrade T1, (SELECT SAL FROM `office`.emp WHERE ENAME LIKE 'Martin') T2
WHERE T1.LOSAL <= T2.SAL AND T1.HISAL >= T2.SAL;
