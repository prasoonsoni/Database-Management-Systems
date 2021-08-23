-- Creating Table
CREATE TABLE employee (
    first_name VARCHAR(15) NOT NULL,
    mid_name CHAR(2),
    last_name VARCHAR(15) NOT NULL,
    ssn_number CHAR(9) PRIMARY KEY,
    birthday DATE,
    address VARCHAR(50),
    sex CHAR(1),
    CHECK(sex IN ('m', 'f', 'M', 'F')),
    salary NUMBER(7) DEFAULT 800,
    supervisor_ssn CHAR(9),
    department_number NUMBER(5)
);

-- Adding foreign key 
ALTER TABLE employee
ADD CONSTRAINT con_fk_ssn FOREIGN KEY(supervisor_ssn) REFERENCES employee (ssn_number) ON DELETE
SET NULL;

-- Adding foreign key need to be run after creatin of department table
ALTER TABLE employee
ADD CONSTRAINT con_fk_dept FOREIGN KEY(department_number) REFERENCES department(department_number) ON DELETE CASCADE;

-- Inserting Values
INSERT INTO employee
VALUES (
        'Doug',
        'E',
        'Gilbert',
        '554433221',
        '09-JUN-60',
        '11 S 59 E, Salt Lake City, UT',
        'M',
        80000,
        NULL,
        NULL
    );

INSERT INTO employee
VALUES (
        'Joyce',
        ' ',
        'PAN',
        '543216789',
        '07-FEB-78',
        '35 S 18 E, Salt Lake City, UT',
        'F',
        70000,
        NULL,
        NULL
    );

INSERT INTO employee
VALUES (
        'Frankin',
        'T',
        'Wong',
        '333445555',
        '08-DEC-45',
        '638 Voss,Houston, TX',
        'M',
        40000,
        554433221,
        NULL
    );

INSERT INTO employee
VALUES (
        'Jennifer',
        'S',
        'Wallace',
        '987654321',
        '20-JUN-31',
        '291 Berry, Bellaire, TX',
        'F',
        43000,
        554433221,
        NULL
    );

INSERT INTO employee
VALUES (
        'Johny',
        'B',
        'Smith',
        '123456789',
        '09-JAN-55',
        '731 Fondren,Houston, TX',
        'M',
        30000,
        333445555,
        NULL
    );

INSERT INTO employee
VALUES (
        'Ramesh',
        'K',
        'Narayan',
        '666884444',
        '15-SEP-52',
        '975 Fire Oak,Humble, TX',
        'M',
        38000,
        333445555,
        NULL
    );

INSERT INTO employee
VALUES (
        'Joyce',
        'A',
        'English',
        '453453453',
        '31-JUL-62',
        '5631 Rice,Houston, TX',
        'F',
        25000,
        333445555,
        NULL
    );

INSERT INTO employee
VALUES (
        'James',
        'E',
        'Borg',
        '888665555',
        '10-NOV-27',
        '450 Stone,Houston, TX',
        'M',
        55000,
        543216789,
        NULL
    );

INSERT INTO employee
VALUES (
        'Alicia',
        'J',
        'Zelaya',
        '999887777',
        '19-JUL-58',
        '3321 Castle,Spring, TX',
        'F',
        25000,
        987654321,
        NULL
    );

INSERT INTO employee
VALUES (
        'Ahmad',
        'V',
        'Jabbar',
        '987987987',
        '29-MAR 59',
        '980 Dallas,Houston, TX',
        'M',
        25000,
        987654321,
        NULL
    );

-- Altering table, this to be run after entering values in department table.
UPDATE employee SET department_number = 3 WHERE SSN_Number = '554433221';
UPDATE employee SET department_number = 2 WHERE SSN_Number = '543216789';
UPDATE employee SET department_number = 5 WHERE SSN_Number = '333445555';
UPDATE employee SET department_number = 4 WHERE SSN_Number = '987654321';
UPDATE employee SET department_number = 5 WHERE SSN_Number = '123456789';
UPDATE employee SET department_number = 5 WHERE SSN_Number = '666884444';
UPDATE employee SET department_number = 5 WHERE SSN_Number = '453453453';
UPDATE employee SET department_number = 1 WHERE SSN_Number = '888665555';
UPDATE employee SET department_number = 4 WHERE SSN_Number = '999887777';
UPDATE employee SET department_number = 4 WHERE SSN_Number = '987987987';