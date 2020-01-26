Use employee_info_db; 
INSERT INTO department (name) 
VALUES ("Engineering"),("Finance"),("Sales"),("Legal"), ("IT"),("Admin");

INSERT INTO role (title, department_id, salary) 
VALUES ('Engineer', 1, 300000),
('Sales Rep', 2, 100000),
('Lawyer', 3, 250000),
('IT', 4, 200000),
('Admin', 5, 70000);

INSERT INTO employee (first_name, last_name, role_id, manager_id) 
VALUES ('Joe', 'Shields', 1, 1)
('Andrew', 'Ross', 1, 2),
('Adam', 'Espino', 2, NULL),
('Shane', 'Shields', 3, 3),
('Yong', 'Lee', 4, NULL),
('Brie', 'Howard', 5, NULL),
('Kat', 'Poulos', 6, NULL);
  

​
