
-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary
from employees e 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = e.id ;

--=============================================================

-- 2. ������� ���� ���������� � ������� �� ������ 2000.

select employee_name, monthly_salary
from employees e 
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = e.id 
where monthly_salary < 2000;

--=============================================================

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select  es.employee_id, e.employee_name, s.monthly_salary 
from employee_salary es 
full JOIN employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
where e.employee_name isnull;
--=============================================================

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select  es.employee_id, e.employee_name, s.monthly_salary 
from employee_salary es 
full JOIN employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
where e.employee_name isnull and s.monthly_salary  < 2000;
--=============================================================

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name
from employees e 
full join employee_salary es on es.employee_id = e.id
where employee_name isnull;
--=============================================================

--  6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name
from employees e
join roles_employee re on re.employee_id = e.id 
join roles r on r.id= re.role_id ;
--=============================================================

-- 7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Java%';
--=============================================================

-- 8. ������� ����� � ��������� ������ Python �������������.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on role_id = r.id 
where role_name like '%Python%';
--=============================================================

-- 9. ������� ����� � ��������� ���� QA ���������.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on role_id = r.id 
where role_name like '%QA%';
--=============================================================

-- 10. ������� ����� � ��������� ������ QA ���������.
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on role_id = r.id 
where role_name like '%Manual QA%';
--=============================================================

-- 11. ������� ����� � ��������� ��������������� QA
select e.employee_name, r.role_name 
from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on role_id = r.id 
where role_name like '%Automation QA%';
--=============================================================

-- 12. ������� ����� � �������� Junior ������������
select  employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id 
full join employee_salary es on es.employee_id = e.id
full join salary s on re.role_id  = s.id
where r.role_name like '%Junior%';
--=============================================================

 --13. ������� ����� � �������� Middle ������������
select  employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id 
full join employee_salary es on es.employee_id = e.id
full join salary s on re.role_id  = s.id
where r.role_name like '%Middle%';
--=============================================================

-- 14. ������� ����� � �������� Senior ������������
select  employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id 
full join employee_salary es on es.employee_id = e.id
full join salary s on re.role_id  = s.id
where r.role_name like '%Senior%';
--============================================================

-- 15. ������� �������� Java �������������
select role_name, monthly_salary
from roles r 
join roles_employee re on re.role_id = r.id 
join salary s on s.id = re.role_id
where role_name like '%Java developer%';
--=============================================================

-- 16. ������� �������� Python �������������
select role_name, monthly_salary
from roles r 
join roles_employee re on re.role_id = r.id 
join salary s on s.id = re.role_id
where role_name like '%Python developer%';
--=============================================================

-- 17. ������� ����� � �������� Junior Python �������������
 select  employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id 
full join employee_salary es on es.employee_id = e.id
full join salary s on re.role_id  = s.id
where r.role_name like '%Junior Python developer%';
--=============================================================

--18. ������� ����� � �������� Middle JS �������������
 select  employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id 
full join employee_salary es on es.employee_id = e.id
full join salary s on re.role_id  = s.id
where r.role_name like '%Middle Java developer%';
--==============================================================
 
--19. ������� ����� � �������� Senior Java �������������
select  employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id 
full join employee_salary es on es.employee_id = e.id
full join salary s on re.role_id  = s.id
where r.role_name like '%Senior Java developer%';
--==============================================================
 
--20. ������� �������� Junior QA ���������
select role_name, monthly_salary
from roles r 
join roles_employee re on re.role_id = r.id 
join salary s on s.id = re.role_id
where role_name like '%Junior Manual QA%';
--==============================================================

-- 21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary)
from salary s 
join roles_employee re on s.id = re.role_id 
join roles r on r.id = re.role_id 
where role_name like '%Junior%';
--===============================================================

--22. ������� ����� ������� JS �������������
select sum(monthly_salary)
from salary s 
join roles_employee re on s.id = re.role_id 
join roles r on r.id = re.role_id
where role_name like '%Java%';
--===============================================================

--23. ������� ����������� �� QA ���������
select min(monthly_salary)
from salary s 
join roles_employee re on s.id = re.role_id 
join roles r on r.id = re.role_id
where role_name like '%QA%';
--===============================================================

--24. ������� ������������ �� QA ���������
select max(monthly_salary)
from salary s 
join roles_employee re on s.id = re.role_id 
join roles r on r.id = re.role_id
where role_name like '%QA%';
--===============================================================

--25. ������� ���������� QA ���������
select count(role_name)
from roles r 
join roles_employee re on re.role_id = r.id
where role_name like '%QA%';
--===============================================================

-- 26. ������� ���������� Middle ������������.
select count(role_name)
from roles r 
join roles_employee re on re.role_id = r.id
where role_name like '%Middle%';
--===============================================================

-- 27. ������� ���������� �������������
select count(role_name)
from roles r 
join roles_employee re on re.role_id = r.id
where role_name like '%developer%';
--===============================================================

-- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary)
from salary s 
join roles_employee re on s.id = re.role_id 
join roles r on r.id = re.role_id
where role_name like '%developer%';
--===============================================================

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join salary s on s.id = re.role_id
full join roles r on r.id = re.role_id
order by monthly_salary;
--===============================================================

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join salary s on s.id = re.role_id
full join roles r on r.id = re.role_id
where monthly_salary > 1700 and monthly_salary <= 2300
order by monthly_salary;
--=================================================================

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join salary s on s.id = re.role_id
full join roles r on r.id = re.role_id
where monthly_salary < 2300
order by monthly_salary;
--=================================================================

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from employees e 
full join roles_employee re on re.employee_id = e.id 
full join salary s on s.id = re.role_id
full join roles r on r.id = re.role_id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary;





