-- Creating Table
CREATE TABLE project(
    project_name VARCHAR2(15) NOT NULL,
    project_number NUMBER(5) PRIMARY KEY,
    project_location VARCHAR2(50),
    department_number NUMBER(5),
    CONSTRAINT deptnum_fk FOREIGN KEY(department_number) REFERENCES department(department_number) ON DELETE
    SET NULL
);

-- Inserting Values
INSERT INTO project VALUES ('projectA', 3388, 'Houston', 1);
INSERT INTO project VALUES ('projectB', 1945, 'Salt Lake City', 3);
INSERT INTO project VALUES ('projectC', 6688, 'Houston', 5);
INSERT INTO project VALUES ('projectD', 2423, 'Bellaire', 4);
INSERT INTO project VALUES ('projectE', 7745, 'Sugarland', 5);
INSERT INTO project VALUES ('projectF', 1566, 'Salt Lake City', 3);
INSERT INTO project VALUES ('projectG', 1234, 'New York', 2);
INSERT INTO project VALUES ('projectH', 3467, 'Stafford', 4);
INSERT INTO project VALUES ('projectI', 4345, 'Chicago', 1);
INSERT INTO project VALUES ('projectJ', 2212, 'San Francisco', 2);