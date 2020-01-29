DROP DATABASE IF EXISTS employee_info_DB;

CREATE DATABASE  employee_info_DB;

USE  employee_info_DB;

CREATE TABLE department(
  id INT(11) AUTO_INCREMENT NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO department (name)
VALUES ("Engineering"),("Finance"),("Sales"),("Legal"), ("IT"),("Admin");

CREATE TABLE role (
  id INT(11) AUTO_INCREMENT NOT NULL,
  title VARCHAR(30) NOT NULL,
  department_id INT NOT NULL,
  FOREIGN KEY (department_id)
  REFERENCES department(id),
  salary DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO role (title, department_id, salary)
VALUES ("Engineering", 1, 200000);


CREATE TABLE employee (
  id INT(11) AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  FOREIGN KEY (role_id)
  REFERENCES role(id),
  manager_id INT NULL,
  FOREIGN KEY (manager_id)
  REFERENCES employee(id),
  PRIMARY KEY (id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Andrew", "Ross", 1, NULL);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;