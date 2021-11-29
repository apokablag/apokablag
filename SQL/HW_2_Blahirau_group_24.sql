--1. ������� ������� employees � 70 ��������
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);
--2. ��������� ������� employee 70 ��������.
insert into employees (id, employee_name) 
values (default, 'Alexander');
-- 70 ���������� �����

select * from employees;

--3. ������� ������� salary � 15 ��������
create table salary (
	id serial primary key,
	monthly_salary Int not null
);
--4. ��������� ������� salary 15 ��������:
insert into salary (id, monthly_salary) 
values  (default, 3200),

select * from salary;

--��������� 
--update salary 
--set monthly_salary = 3100
--where id = 22;

-- �������� �������
--delete from salary where id > 15;

--5. ������� ������� employee_salary � 40 �������� � 10 �� ��� � ��������������� employee_id
create table employee_salary (
	id serial primary key,
	employee_id Int not null,
	salary_id Int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (salary_id)
		references salary(id)
);
--6. ��������� ������� employee_salary 40 ��������:
insert into employee_salary (id, employee_id, salary_id) 
values (default, 21, 16),
	   (default, 22, 24);
	  -- 30 ��� ���� � ���� � 10 �� ������������

select * from employee_salary;




--7. ������� ������� roles 20 �������� 
create table roles (
	id serial primary key,
	role_name varchar(50) not null unique
);

select * from roles;

-- 8. �������� ��� ������ role_name � int �� varchar(30)
alter table roles 
alter column role_name type varchar(30);
-- 9. ��������� ������� roles 20 ��������:
insert into roles(id, role_name) 
values (default, 'Junior Automation QA engineer'),
	   (default, 'Middle Automation QA engineer'),
	   (default, 'Senior Automation QA engineer'),
	   (default, 'Junior Python Developer'),
	   (default, 'Middle Python Developer'),
	   (default, 'Senior Python Developer'),
	   (default, 'Junior Java Developer'),
	   (default, 'Middle Java Developer'),
	   (default, 'Senior Java Developer'),
	   (default, 'Junior JavaScript Developer'),
	   (default, 'Middle JavaScript Developer'),
	   (default, 'Senior JavaScript Developer'),
	   (default, 'CEO'),
	   (default, 'HR'),
	   (default, 'Designer'),
	   (default, 'Support'),
	   (default, 'IT'),
	   (default, 'Accounter'),
	   (default, 'C# Developer'),
	   (default, 'C++ Developer');
select * from roles ;


--10. ������� ������� roles_employee

create table roles_employee (
	id serial primary key,
	employee_id Int not null unique,
	role_id Int not null,
	foreign key (employee_id)
		references  employees(id),
	foreign key (role_id)
		references roles(id)
);
-- 11. ��������� ������� roles_employee 40 ��������:
insert into roles_employee (id, employee_id, role_id)
values (default, 1, 12),
	   (default, 2, 14),
	   (default, 3, 15),
	   (default, 4, 1),
	   (default, 5, 7),
	   (default, 6, 8),
	   (default, 7, 9),
	   (default, 8, 6),
	   (default, 9, 12),
	   (default, 10, 11),
	   (default, 11, 1),
	   (default, 12, 7),
	   (default, 13, 2),
	   (default, 14, 13),
	   (default, 15, 5),
	   (default, 16, 1),
	   (default, 17, 8),
	   (default, 18, 2),
	   (default, 19, 6),
	   (default, 20, 7),
	   (default, 21, 11),
	   (default, 22, 3),
	   (default, 23, 7);
	  --40 ����� 
select * from roles_employee;