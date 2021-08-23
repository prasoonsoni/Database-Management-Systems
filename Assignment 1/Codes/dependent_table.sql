-- Creating Table
CREATE TABLE dependent(
    employee CHAR(9),
    dependent_name VARCHAR(15),
    sex CHAR(1),
    birthday DATE,
    relationship VARCHAR(8),
    CONSTRAINT emp_fk FOREIGN KEY(employee) REFERENCES employee(ssn_number) ON DELETE CASCADE
);

-- Inserting Values
INSERT INTO dependent VALUES (333445555, 'Alice', 'F', '05-Apr-76', 'Daughter');
INSERT INTO dependent VALUES (333445555, 'Theodore', 'M', '25-Oct-73', 'Son');
INSERT INTO dependent VALUES (333445555, 'Joy', 'F', '03-May-48', 'Spouse');
INSERT INTO dependent VALUES (987654321, 'Abner', 'M', '29-Feb-32', 'Spouse');
INSERT INTO dependent VALUES (123456789, 'Alice', 'F', '31-Dec-78', 'Daughter');
INSERT INTO dependent VALUES (123456789, 'Elizabeth', 'F', '05-may-57', 'Spouse');