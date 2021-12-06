1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 
 select employee_name, monthly_salary from employees left join salary on employees.id = salary.id;

 
2. Вывести всех работников у которых ЗП меньше 2000.
 
 select employee_name, monthly_salary from salary join employees on salary.id = employees.id
 where monthly_salary < 2000;
 
3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary, employee_name from salary
join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employees.id = employee_salary.employee_id 
where employee_name is NULL;

4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, monthly_salary from employees 
join employee_salary on employee_salary.employee_id = employees.id 
right join salary on salary.id  = employee_salary.salary_id 

5. Найти всех работников кому не начислена ЗП.

select employee_name, monthly_salary from employees 
join employee_salary on employee_salary.employee_id = employees.id 
right join salary on salary.id  = employee_salary.salary_id 

6. Вывести всех работников с названиями их должности.

select employee_name, role_name from employees  
join roles_employee on employees.id = roles_employee.employee_id
join roles on role_id = roles.id;

7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = role_id
where role_name like '%Java %';

8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id 
where role_name like '%Python%';

 9. Вывести имена и должность всех QA инженеров.
 
 select employee_name, role_name from employees e 
 join roles_employee re on e.id = re.employee_id
 join roles on roles.id = re.role_id 
 where role_name like '%QA%';
 
10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Manual%';

11. Вывести имена и должность автоматизаторов QA
 
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles on roles.id = re.role_id 
where role_name like '%Auto%' ;
 
12. Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary, role_name from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id
join roles_employee re on e.id = re.employee_id 
join roles on roles.id = re.role_id
where role_name like '%Jun%';

 13. Вывести имена и зарплаты Middle специалистов
 
 select employee_name, role_name, monthly_salary from employees e 
 join roles_employee re on e.id = re.employee_id 
 join roles on roles.id = re.role_id 
 join employee_salary es on e.id = es.employee_id 
 join salary on salary.id = es.salary_id
 where role_name like '%Middle%';

 14. Вывести имена и зарплаты Senior специалистов
 
 select employee_name, monthly_salary, role_name from employees 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id
 join roles_employee on roles_employee.id = employees.id 
 join roles on roles.id = roles_employee.role_id
 where role_name like '%Senior%';

 15. Вывести зарплаты Java разработчиков
 
 select monthly_salary, role_id, role_name from salary
 join roles_employee on salary.id = roles_employee.role_id
 join roles on roles.id = roles_employee.role_id 
 where role_name like '%Java %'

16. Вывести зарплаты Python разработчиков

select distinct monthly_salary, role_id, role_name from salary
join roles_employee on salary.id = roles_employee.role_id 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Python%'

17. Вывести имена и зарплаты Junior Java разработчиков 

select employee_name, role_name, monthly_salary from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Jun%' and role_name like '%Java%'

18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, role_name, monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle%' and role_name like '%JavaS%'

19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Senior%' and role_name like '%Java %'

20. Вывести зарплаты Junior QA инженеров

select employee_name, monthly_salary, role_name from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary es on es.employee_id = employees.id 
join salary on salary.id = es.salary_id 
where role_name like '%Jun%' and role_name like '%QA%'

21. Вывести среднюю зарплату всех Junior специалистов

 select AVG (monthly_salary) from employees 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles.id = roles_employee.role_id 
 join employee_salary on employee_salary.employee_id = employees.id 
 join salary on salary.id = employee_salary.salary_id 
 where role_name like '%Jun%'
 
 22. Вывести сумму зарплат JS разработчиков
 
 select sum(monthly_salary) from employees 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles.id = roles_employee.role_id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 where role_name like '%JavaS%'
 
  23. Вывести минимальную ЗП QA инженеров
  
  select min(monthly_salary) from employees
  join employee_salary on employees.id = employee_salary.employee_id 
  join salary on employee_salary.salary_id = salary.id
  join roles_employee on roles_employee.employee_id = employees.id 
  join roles on roles.id = roles_employee.role_id 
  where role_name like '%QA%'
  
   24. Вывести максимальную ЗП QA инженеров
   
   select max(monthly_salary) from employees
   join employee_salary on employees.id = employee_salary.employee_id 
   join salary on salary.id = employee_salary.salary_id 
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles.id = roles_employee.role_id 
   where role_name like '%QA%'
   
   26. Вывести количество Middle специалистов.
   
   select count(employee_name) from employees 
   join roles_employee on roles_employee.employee_id = employees.id 
   join roles on roles.id = roles_employee.role_id 
   where role_name like '%Middle%'
   
    27. Вывести количество разработчиков
    
    select count(employee_name) from employees 
    join roles_employee on employees.id = roles_employee.employee_id 
    join roles on roles_employee.role_id =roles.id 
    where role_name like '%Devel%'
    
    28. Вывести фонд (сумму) зарплаты разработчиков.
    
    select sum(monthly_salary) from employees 
    join employee_salary on employees.id = employee_salary.employee_id 
    join salary on employee_salary.salary_id = salary.id 
    join roles_employee on employees.id = roles_employee.employee_id 
    join roles on roles.id = roles_employee.role_id 
    where role_name like '%Develop%'

 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
 select employee_name, role_name, monthly_salary from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles.id = roles_employee.role_id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 order by  monthly_salary asc 
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
 select employee_name, role_name, monthly_salary from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles.id = roles_employee.role_id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id
 where monthly_salary between 1700 and 2300
 order by monthly_salary asc
 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
 select employee_name, role_name, monthly_salary from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles.id = roles_employee.role_id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id
 where monthly_salary < 2300
 order by monthly_salary asc
 
  32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 
 select employee_name, role_name, monthly_salary from employees 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles.id = roles_employee.role_id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id
 where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
 order by monthly_salary asc