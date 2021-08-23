-- Creating Table
CREATE TABLE department (
    department_name VARCHAR(15) NOT NULL,
    department_number NUMBER(5) PRIMARY KEY,
    manager_ssn CHAR(9),
    manage_start_date DATE,
    CONSTRAINT manager_ssn_fk FOREIGN KEY(manager_ssn) REFERENCES employee(ssn_number) ON DELETE
    SET NULL
);

-- Inserting values 
INSERT INTO department VALUES ('Manufacture', 1, '888665555', '19-JUN-71');
INSERT INTO department VALUES ('Administration', 2, '543216789', '04-JAN-99');
INSERT INTO department VALUES ('Headquarter', 3, '554433221', '22-SEP-55');
INSERT INTO department VALUES ('Finance', 4, '987654321', '01-JAN-85');
INSERT INTO department VALUES ('Research', 5, '333445555', '22-MAY-78');