DROP DATABASE IF EXISTS employee_info_DB;

CREATE DATABASE  employee_info_DB;

USE  employee_info_DB;

CREATE TABLE department(
  id INT(11) AUTO_INCREMENT NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO department (name)
VALUES ("Engineering"),("Finance"),("Sales"),("Legal");

CREATE TABLE role (
  id INT(11) AUTO_INCREMENT NOT NULL,
  title VARCHAR(30),
  department_id INT,
  salary DECIMAL(10,2),
  PRIMARY KEY (id)
);
INSERT INTO role (title, department_id, salary)
VALUES ("Engineering", 1, 200000);


CREATE TABLE employee (
  id INT(11) AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT NULL,
  PRIMARY KEY (id)
);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Andrew", "Ross", 2);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;