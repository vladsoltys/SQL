--Таблица employees
--
--1) Создать таблицу employees
--     id. serial,  primary key,
--     employee_name. Varchar(50), not null
--2) Наполнить таблицу employee 70 строками.

create table employees(
    id serial primary key,
    employee_name varchar(50) not null
);

select * from employees;

insert into employees(employee_name)
values ('Harry'),
       ('Oliver'),
       ('Jack'),
       ('Charlie'),
       ('Thomas'),
       ('Jacob'),
       ('Alfie'),
       ('Riley'),
       ('William'),
       ('James'),
       ('Amelia'),
       ('Olivia'),
       ('Jessica'),
       ('Emily'),
       ('Lily'),
       ('Ava'),
       ('Heather'),
       ('Sophie'),
       ('Mia'),
       ('Isabella'),
       ('Jack'),
       ('James'),
       ('Daniel'),
       ('Charlie'),
       ('Ethan'),
       ('Matthew'),
       ('Ryen'),
       ('Riley'),
       ('Noah'),
       ('Sophie'),
       ('Emily'),
       ('Grace'),
       ('Amelia'),
       ('Jessica'),
       ('Lucy'),
       ('Sophia'),
       ('Katie'),
       ('Eva'),
       ('Aoife'),
       ('Jacob'),
       ('Oliver'),
       ('Riley'),
       ('Jack'),
       ('Alfie'),
       ('Harry'),
       ('Charlie'),
       ('Dylan'),
       ('William'),
       ('Mason'),
       ('Amelia'),
       ('Ava'),
       ('Mia'),
       ('Lily'),
       ('Olivia'),
       ('Ruby'),
       ('Seren'),
       ('Ella'),
       ('Emily'),
       ('Jack'),
       ('Lewis'),
       ('Riley'),
       ('James'),
       ('Logan'),
       ('Daniel'),
       ('Ethan'),
       ('Harry'),
       ('Alexander'),
       ('Oliver'),
       ('Isla'),
       ('Lily');
      
--Таблица salary
--
--1) Создать таблицу salary
--    id. Serial  primary key,
--    monthly_salary. Int, not null
--2) Наполнить таблицу salary 15 строками:
--    -1000
--    -1100
--    -1200
--    -1300
--    -1400
--    -1500
--    -1600
--    -1700
--    -1800
--    -1900
--    -2000
--    -2100
--    -2200
--    -2300
--    -2400
--    -2500

            
create table salary(
      id serial primary key,
      monthly_salary int not null
);

select * from salary;

insert into salary(monthly_salary) 
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
--Таблица employee_salary
--
--1) Создать таблицу employee_salary
--    id. Serial  primary key,
--    employee_id. Int, not null, unique
--    salary_id. Int, not null
--2) Наполнить таблицу employee_salary 40 строками:
--    в 10 строк из 40 вставить несуществующие employee_id      

      
create table employee_salary(
       id serial primary key,
       employee_id int not null unique,
       salary_id int not null
);

select * from employee_salary;

insert into employee_salary (id, employee_id, salary_id)
values (1,17,5),
       (2,2,11),
       (3,24,12),
       (4,16,3),
       (5,78,15),
       (6,73,10),
       (7,25,7),
       (8,21,8),
       (9,30,13),
       (10,26,14),
       (11,31,6),
       (12,66,4),
       (13,5,2),
       (14,36,1),
       (15,1,9),
       (16,40,2),
       (17,58,13),
       (18,28,15),
       (19,29,14),
       (20,89,10),
       (21,37,3),
       (22,22,12),
       (23,69,4),
       (24,85,11),
       (25,82,9),
       (26,8,8),
       (27,77,6),
       (28,12,7),
       (29,4,5),
       (30,90,1),
       (31,67,14),
       (32,3,6),
       (33,98,13),
       (34,71,7),
       (35,9,3),
       (36,11,4),
       (37,57,12),
       (38,7,1),
       (39,95,11),
       (40,38,5);
      
--Таблица roles
--
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

      
create table roles(
       id serial primary key,
       role_name int not null unique
);

select * from roles;

alter table roles
alter column role_name type varchar(50);

insert into roles (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
      
--Таблица roles_employee
--
--1)Создать таблицу roles_employee
--  - id. Serial  primary key,
--  - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--  - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--2)Наполнить таблицу roles_employee 40 строками:
     
     
create table roles_employee(
         id serial primary key,
         employee_id int not null unique,
         role_id int not null,
         foreign key(employee_id)
             references employees(id),
         foreign key(role_id)
             references roles(id)
);

select * from roles_employee;

insert into roles_employee(id, employee_id,role_id)
values (1,59,1),
       (2,9,6),
       (3,63,4),
       (4,46,11),
       (5,17,5),
       (6,18,9),
       (7,65,13),
       (8,22,7),
       (9,13,10),
       (10,31,19),
       (11,6,12),
       (12,29,14),
       (13,56,8),
       (14,1,16),
       (15,23,18),
       (16,40,2),
       (17,58,15),
       (18,15,3),
       (19,24,17),
       (20,64,14),
       (21,57,1),
       (22,49,7),
       (23,20,2),
       (24,3,13),
       (25,28,17),
       (26,52,3),
       (27,14,5),
       (28,21,10),
       (29,53,18),
       (30,32,19),
       (31,5,11),
       (32,19,16),
       (33,62,15),
       (34,25,12),
       (35,68,6),
       (36,51,9),
       (37,66,8),
       (38,35,5),
       (39,47,19),
       (40,48,1);
