-- Creating Table
CREATE TABLE dept_locations(
    department_number NUMBER(5),
    department_location VARCHAR(15),
    CONSTRAINT deptno_fk FOREIGN KEY(department_number) REFERENCES department(department_number) ON DELETE CASCADE
);

-- Inserting Values
INSERT INTO dept_locations VALUES (1, 'Houston');
INSERT INTO dept_locations VALUES (1, 'Chicago');
INSERT INTO dept_locations VALUES (2, 'New York');
INSERT INTO dept_locations VALUES (2, 'San Francisco');
INSERT INTO dept_locations VALUES (3, 'Salt Lake City');
INSERT INTO dept_locations VALUES (4, 'Stafford');
INSERT INTO dept_locations VALUES (4, 'Bellaire');
INSERT INTO dept_locations VALUES (5, 'Sugarland');
INSERT INTO dept_locations VALUES (5, 'Houston');