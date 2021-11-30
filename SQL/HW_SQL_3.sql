-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary
from employees e 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id

--=============================================================

-- 2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary
from employees e 
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id
where monthly_salary < 2000;

--=============================================================

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select  es.employee_id, e.employee_name, s.monthly_salary 
from employee_salary es 
full JOIN employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
where e.employee_name isnull;
--=============================================================

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select  es.employee_id, e.employee_name, s.monthly_salary 
from employee_salary es 
full JOIN employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
where e.employee_name isnull and s.monthly_salary  < 2000;
--=============================================================

-- 5. Найти всех работников кому не начислена ЗП.
select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on re.role_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on e.id = es.employee_id 
full join salary s on s.id = es.salary_id
where monthly_salary isnull;
--=============================================================

--  6. Вывести всех работников с названиями их должности.
select employee_name, role_name
from employees e
join roles_employee re on re.employee_id = e.id 
join roles r on r.id= re.role_id ;
--=============================================================

-- 7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Java developer%';
--=============================================================

-- 8. Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on role_id = r.id 
where role_name like '%Python%';
--=============================================================

-- 9. Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on role_id = r.id 
where role_name like '%QA%';
--=============================================================

-- 10. Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on role_id = r.id 
where role_name like '%Manual QA%';
--=============================================================

-- 11. Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on role_id = r.id 
where role_name like '%Automation QA%';
--=============================================================

-- 12. Вывести имена и зарплаты Junior специалистов
select  employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior%';
--=============================================================

 --13. Вывести имена и зарплаты Middle специалистов
select  employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id 
where r.role_name like '%Middle%';
--=============================================================

-- 14. Вывести имена и зарплаты Senior специалистов
select  employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id 
where r.role_name like '%Senior%';
--============================================================

-- 15. Вывести зарплаты Java разработчиков
select role_name, monthly_salary
from roles r 
join roles_employee re on re.role_id = r.id 
join salary s on s.id = es.salary_id 
where role_name like '%Java developer%';
--=============================================================

-- 16. Вывести зарплаты Python разработчиков
select role_name, monthly_salary
from roles r 
join roles_employee re on re.role_id = r.id 
join salary s on s.id = es.salary_id 
where role_name like '%Python developer%';
--=============================================================

-- 17. Вывести имена и зарплаты Junior Python разработчиков
 select  employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior Python developer%';
--=============================================================

-- 18. Вывести имена и зарплаты Middle JS разработчиков
 select  employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id 
where r.role_name like '%Middle Java developer%';
--==============================================================
 
-- 19. Вывести имена и зарплаты Senior Java разработчиков
select  employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id 
where r.role_name like '%Senior Java developer%';
--==============================================================
 
-- 20. Вывести зарплаты Junior QA инженеров
select role_name, monthly_salary
from employees e
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id
where r.role_name like  '%Junior QA%';
--==============================================================

-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary)
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id
where r.role_name like '%Junior%';
--===============================================================

-- 22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary)
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id
where r.role_name like '%Java%';
--===============================================================

-- 23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary)
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id
where r.role_name like '%QA%';
--===============================================================

-- 24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary)
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id
where r.role_name like '%QA%';
--===============================================================

-- 25. Вывести количество QA инженеров
select count(role_name)
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id
where r.role_name like '%QA%';
--===============================================================

-- 26. Вывести количество Middle специалистов.
select count(role_name)
from roles r 
join roles_employee re on re.role_id = r.id
where role_name like '%Middle%';
--===============================================================

-- 27. Вывести количество разработчиков
select count(role_name)
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id
where r.role_name like '%developer%';
--===============================================================

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary)
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on re.role_id  = s.id
where r.role_name like '%developer%';
--===============================================================

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on re.employee_id = e.id 
join salary s on s.id = re.role_id
join roles r on r.id = re.role_id
order by monthly_salary;
--===============================================================

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re on re.employee_id = e.id 
join salary s on s.id = re.role_id
join roles r on r.id = re.role_id
where monthly_salary >= 1700 and monthly_salary <= 2300
order by monthly_salary;
--=================================================================

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join salary s on s.id = re.role_id
full join roles r on r.id = re.role_id
where monthly_salary < 2300
order by monthly_salary;
--=================================================================

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join salary s on s.id = re.role_id
full join roles r on r.id = re.role_id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary;





