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
where role_name in ('Senior Java developer', 'Junior Java developer', 'Middle Java developer');

9. ������� ����� � ��������� ���� QA ���������.


10. ������� ����� � ��������� ������ QA ���������.


11. ������� ����� � ��������� ��������������� QA


12. ������� ����� � �������� Junior ������������
 13. ������� ����� � �������� Middle ������������
 14. ������� ����� � �������� Senior ������������
 15. ������� �������� Java �������������
 16. ������� �������� Python �������������
 17. ������� ����� � �������� Junior Python �������������
 18. ������� ����� � �������� Middle JS �������������
 19. ������� ����� � �������� Senior Java �������������
 20. ������� �������� Junior QA ���������
 21. ������� ������� �������� ���� Junior ������������
 22. ������� ����� ������� JS �������������
 23. ������� ����������� �� QA ���������
 24. ������� ������������ �� QA ���������
 25. ������� ���������� QA ���������
 26. ������� ���������� Middle ������������.
 27. ������� ���������� �������������
 28. ������� ���� (�����) �������� �������������.
 29. ������� �����, ��������� � �� ���� ������������ �� �����������
 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000