-- 1
SELECT
    first_name,
    mid_name,
    last_name
FROM
    employee
WHERE
    sex IN ('m', 'M')
    AND salary > 75000;

-- 2
SELECT
    first_name,
    mid_name,
    last_name
FROM
    employee
WHERE
    salary BETWEEN 50000
    AND 80000;

-- 3
SELECT
    *
FROM
    employee
WHERE
    supervisor_ssn IS NULL;

--4
SELECT
    first_name || mid_name || last_name as "name"
FROM
    employee
WHERE
    birthday <('01-JAN-1998');

--5 
SELECT
    first_name,
    mid_name,
    last_name
FROM
    employee
WHERE
    first_name LIKE 'L%'
    AND length(first_name) = 5;

--6
SELECT
    *
FROM
    employee
WHERE
    mid_name IS NULL;

--7
SELECT
    department_name
FROM
    department
WHERE
    department_name LIKE '%i';

--8 
SELECT
    first_name,
    mid_name,
    last_name
FROM
    employee
WHERE
    supervisor_ssn IN ('554433221', '333445555');

--9
-- UPPER
SELECT
    UPPER(department_name)
FROM
    department;

-- lower
SELECT
    LOWER(department_name)
FROM
    department;

--10
SELECT
    SUBSTR(department_name, 1, 4)
FROM
    department;

--11
SELECT
    SUBSTR(address, 5, 11)
FROM
    employee;

--12
SELECT
    ADD_MONTHS(manage_start_date, 2)
FROM
    DEPARTMENT;

--13
SELECT
    ROUND(MONTHS_BETWEEN(SYSDATE, birthday) / 12, 2)
FROM
    employee;

--14
SELECT
    LAST_DAY(manage_start_date),
    NEXT_DAY(manage_start_date, 'MONDAY')
FROM
    department;

--15
SELECT
    REPLACE('Ramana', 'na', 'sri')
FROM
    dual;

--16
SELECT
    LENGTH(department_name)
FROM
    DEPARTMENT;

--17
-- CHANGING FORMAT
ALTER session
set
    NLS_DATE_FORMAT = 'DDth Month YYYY';
-- SYSTEM DATE
SELECT
    SYSDATE
FROM
    DUAL;

--18
SELECT
    ADD_MONTHS(SYSDATE, 8)
FROM
    DUAL;

--19
SELECT
    NEXT_DAY(SYSDATE, 'FRIDAY')
FROM
    DUAL;

--20
SELECT
    LPAD(
        project_location,
        LENGTH(project_location) + 4,
        '*'
    )
FROM
    project;