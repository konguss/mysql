create table Employee
(
Employee_id int auto_increment primary key,
Employee_first_name varchar(500) NOT null,
Employee_last_name varchar(500) NOT null,
Employee_Address varchar(1000),
Employee_emailID varchar(500),
Employee_department_ID int default 9,
Employee_Joining_date date 
);
INSERT INTO Employee (employee_first_name, employee_last_name) values ('Nisha','Luke');
INSERT INTO Employee (employee_first_name, employee_last_name) values ('Suresh','sivalingam');