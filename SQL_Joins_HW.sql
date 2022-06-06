select * from employees;

select * from employee_salary;

select * from roles;

select * from roles_employee;

select * from salary;

/*1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id; 
       
/*2. ������� ���� ���������� � ������� �� ������ 2000.*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000; 
      
/*3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       right join salary on salary.id = employee_salary.salary_id
where employee_name is NULL;
      
/*4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       right join salary on salary.id = employee_salary.salary_id
where employee_name is null and monthly_salary < 2000;

/*5. ����� ���� ���������� ���� �� ��������� ��.*/
select employee_name, monthly_salary
from employees
       left join employee_salary on employees.id = employee_salary.employee_id 
       left join salary on salary.id = employee_salary.salary_id
where monthly_salary is null; 

/*6. ������� ���� ���������� � ���������� �� ���������.*/
select employee_name, role_name
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id;
 
/*7. ������� ����� � ��������� ������ Java �������������.*/
select employee_name, role_name 
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id
where role_name in ('Senior Java developer', 'Junior Java developer', 'Middle Java developer');    

/*8. ������� ����� � ��������� ������ Python �������������.*/
select employee_name, role_name 
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id
where role_name in ('Junior Python developer', 'Middle Python developer', 'Senior Python developer');

/*9. ������� ����� � ��������� ���� QA ���������.*/
select employee_name, role_name 
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id
where role_name like '%QA%' /*in ('Junior Manual QA engineer', 
                    'Middle Automation QA engineer', 
                    'Senior Automation QA engineer',
                    'Middle Manual QA engineer', 
                    'Junior Automation QA engineer')*/;


/*10. ������� ����� � ��������� ������ QA ���������.*/
select employee_name, role_name 
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id
where role_name in ('Junior Manual QA engineer',  
                    'Middle Manual QA engineer');
                   
/*11. ������� ����� � ��������� ��������������� QA*/
select employee_name, role_name 
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id
where role_name like '%Automation QA%' /*in ('Middle Automation QA engineer', 
                    'Senior Automation QA engineer',
                    'Junior Automation QA engineer')*/;

/*12. ������� ����� � �������� Junior ������������*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Junior%';
      
/*13. ������� ����� � �������� Middle ������������*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Middle%';
      
/*14. ������� ����� � �������� Senior ������������*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Senior%';

/*15. ������� �������� Java �������������*/
select monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Java developer%';

/*16. ������� �������� Python �������������*/
select monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Python developer%';

/*17. ������� ����� � �������� Junior Python �������������*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Junior Python developer%';

/*18. ������� ����� � �������� Middle JS �������������*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Junior Python developer%';

/*19. ������� ����� � �������� Senior Java �������������*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Senior Java developer%';

/*20. ������� �������� Junior QA ���������*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Junior% %QA%';

/*21. ������� ������� �������� ���� Junior ������������*/
select avg(monthly_salary) as avg_monthly_salary_of_Junior_employees
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Junior%';

/*22. ������� ����� ������� JS �������������*/
select sum(monthly_salary) as sum_monthly_salary_of_JS_developers
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%JavaScript%';

/*23. ������� ����������� �� QA ���������*/
select min(monthly_salary) as min_monthly_salary_of_QA_employees
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%QA%';

/*24. ������� ������������ �� QA ���������*/
select max(monthly_salary) as max_monthly_salary_of_QA_employees
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%QA%';

/*25. ������� ���������� QA ���������*/
select count(role_name) as count_of_QA_employees
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%QA%';

/*26. ������� ���������� Middle ������������.*/
select count(role_name) as count_of_QA_employees
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Middle%';

/*27. ������� ���������� �������������*/
select count(role_name) as count_of_QA_employees
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%developer%';

/*28. ������� ���� (�����) �������� �������������.*/
select sum(monthly_salary) as fund_of_developers_monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%developer%';

/*29. ������� �����, ��������� � �� ���� ������������ �� �����������*/
select employee_name, role_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
order by employee_name, role_name, monthly_salary;

/*30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300*/
select employee_name, role_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where monthly_salary between 1700 and 2300      
order by employee_name, role_name, monthly_salary;

/*31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300*/
select employee_name, role_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where monthly_salary < 2300      
order by employee_name, role_name, monthly_salary;

/*32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000*/
select employee_name, role_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where monthly_salary in (1100, 1500, 2000)      
order by employee_name, role_name, monthly_salary;