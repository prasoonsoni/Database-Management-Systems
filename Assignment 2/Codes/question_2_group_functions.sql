-- 1
SELECT COUNT(DISTINCT department_number) FROM employee;

--2
SELECT MIN(salary), MAX(salary), department_number FROM employee GROUP BY department_number;

--3
SELECT COUNT(DISTINCT project_number) FROM works_on;

--4
SELECT project_number, SUM(hours) FROM works_on GROUP BY project_number;

--5
SELECT count(ssn_number) FROM employee WHERE MONTHS_BETWEEN(SYSDATE,BIRTHDAY)/12>30;

--6
SELECT department_number FROM employee GROUP BY department_number HAVING COUNT(department_number) >=3;

--7
SELECT AVG(salary), department_number FROM employee GROUP BY department_number;

--8
SELECT COUNT(dependent_name), employee FROM dependent GROUP BY employee; 

--9
SELECT count(ssn_number) FROM employee WHERE MONTHS_BETWEEN(SYSDATE,birthday)/12>60;

--10 
SELECT COUNT(department_number) FROM employee WHERE department_number IN(SELECT department_number FROM department WHERE department_name = 'Manufacture');