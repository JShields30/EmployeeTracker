Use employee_info_db; 
INSERT INTO department (name) 
VALUES ("Engineering"),("Finance"),("Sales"),("Legal"), ("IT"),("Admin");

INSERT INTO role (title, department_id, salary) 
VALUES ('Sales Rep', 2, 100000),
('Lawyer', 3, 250000),
('IT', 4, 200000),
('Admin', 5, 70000);

INSERT INTO employee (first_name, last_name, role_id, manager_id) 
VALUES ('Joe', 'Shields', 1, null),
('Adam', 'Espino', 2, NULL),
('Shane', 'Shields', 3, null),
('Yong', 'Lee', 4, NULL),
('Brie', 'Howard', 5, NULL),
('Kat', 'Poulos', 5, NULL);

UPDATE employee 
SET manager_id = 2
WHERE first_name = 'Shane';
  

UPDATE employee 
SET manager_id = 1
WHERE first_name = 'Brie';


​
