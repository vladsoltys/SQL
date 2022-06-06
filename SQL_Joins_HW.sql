select * from employees;

select * from employee_salary;

select * from roles;

select * from roles_employee;

select * from salary;

/*1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id; 
       
/*2. Вывести всех работников у которых ЗП меньше 2000.*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000; 
      
/*3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       right join salary on salary.id = employee_salary.salary_id
where employee_name is NULL;
      
/*4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       right join salary on salary.id = employee_salary.salary_id
where employee_name is null and monthly_salary < 2000;

/*5. Найти всех работников кому не начислена ЗП.*/
select employee_name, monthly_salary
from employees
       left join employee_salary on employees.id = employee_salary.employee_id 
       left join salary on salary.id = employee_salary.salary_id
where monthly_salary is null; 

/*6. Вывести всех работников с названиями их должности.*/
select employee_name, role_name
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id;
 
/*7. Вывести имена и должность только Java разработчиков.*/
select employee_name, role_name 
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id
where role_name in ('Senior Java developer', 'Junior Java developer', 'Middle Java developer');    

/*8. Вывести имена и должность только Python разработчиков.*/
select employee_name, role_name 
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id
where role_name in ('Junior Python developer', 'Middle Python developer', 'Senior Python developer');

/*9. Вывести имена и должность всех QA инженеров.*/
select employee_name, role_name 
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id
where role_name in ('Junior Manual QA engineer', 
                    'Middle Automation QA engineer', 
                    'Senior Automation QA engineer',
                    'Middle Manual QA engineer', 
                    'Junior Automation QA engineer');


/*10. Вывести имена и должность ручных QA инженеров.*/
select employee_name, role_name 
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id
where role_name in ('Junior Manual QA engineer',  
                    'Middle Manual QA engineer');
                   
/*11. Вывести имена и должность автоматизаторов QA*/
select employee_name, role_name 
from roles 
     inner join roles_employee on roles_employee.role_id=roles.id
     inner join employees on roles_employee.employee_id=employees.id
where role_name in ('Middle Automation QA engineer', 
                    'Senior Automation QA engineer',
                    'Junior Automation QA engineer');

/*12. Вывести имена и зарплаты Junior специалистов*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Junior%';
      
/*13. Вывести имена и зарплаты Middle специалистов*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Middle%';
      
/*14. Вывести имена и зарплаты Senior специалистов*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Senior%';

/*15. Вывести зарплаты Java разработчиков*/
select monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Java developer%';

/*16. Вывести зарплаты Python разработчиков*/
select monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Python developer%';

/*17. Вывести имена и зарплаты Junior Python разработчиков*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Junior Python developer%';

/*18. Вывести имена и зарплаты Middle JS разработчиков*/
select employee_name, monthly_salary
from employees
       inner join employee_salary on employees.id = employee_salary.employee_id 
       inner join salary on salary.id = employee_salary.salary_id
       inner join roles_employee on roles_employee.employee_id=employees.id
       inner join roles on roles_employee.role_id=roles.id
where role_name like '%Junior Python developer%';


19. Вывести имена и зарплаты Senior Java разработчиков
20. Вывести зарплаты Junior QA инженеров
21. Вывести среднюю зарплату всех Junior специалистов
22. Вывести сумму зарплат JS разработчиков
23. Вывести минимальную ЗП QA инженеров
24. Вывести максимальную ЗП QA инженеров
25. Вывести количество QA инженеров
26. Вывести количество Middle специалистов.
27. Вывести количество разработчиков
28. Вывести фонд (сумму) зарплаты разработчиков.
29. Вывести имена, должности и ЗП всех специалистов по возрастанию
30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000