create table phones_apple(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
)


insert into phones_apple(model, ram, front_camera, price)
values ('X', 4, 8, 400),
    ('11', 6, 10, 700),
    ('12', 8, 12, 1000),
    ('7', 4, 12, 400),
    ('XR', 6, 12, 800),
    ('XS', 6, 12, 1000),
    ('13', 6, 12, 1500),
    ('8', 4, 10, 700),
    ('SE2020', 6, 8, 700),
    ('X65', 6, 10, 350),
    ('X75', 8, 10, 450),
    ('X85', 4, 16, 550),
    ('X95', 12, 10, 650),
    ('X105', 8, 12, 760),
    ('X115', 6, 10, 820)
 ;
 
select * from phones_apple;

create table phones_samsung(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
)

insert into phones_samsung(model, ram, front_camera, price)
values ('A50', 6, 10, 300),
    ('A50', 8, 10, 400),
    ('A52', 8, 16, 500),
    ('S20', 8, 24, 1500),
    ('S21', 8, 12, 1000),
    ('S22', 6, 12, 1200),
    ('A71', 6, 12, 1200),
    ('A91', 4, 12, 1900),
    ('A57', 8, 8, 900),
    ('A32', 8, 4, 800),
    ('A33', 8, 5, 750),
    ('A43', 8, 5, 850)
 ;
 
select * from phones_samsung;

insert into phones_samsung(model, ram, front_camera, price)
values ('A65', 6, 10, 350),
    ('A75', 8, 10, 450),
    ('A85', 4, 16, 550),
    ('A95', 12, 10, 650),
    ('A105', 8, 12, 760),
    ('A115', 6, 10, 820)
 ;
 
create table samsung_orders(
 id serial primary key,
 phone_id int
)

create table apple_orders(
 id serial primary key,
 phone_id int
)



insert into apple_orders(phone_id)
values (3),
    (9),
    (5),
    (1),
    (4);
   
insert into samsung_orders(phone_id)
values (2),
    (1),
    (5);
    
select * from samsung_orders;
select * from apple_orders;
select * from phones_apple;
select * from phones_samsung;

--SUBQUERIES

select avg(price) from phones_apple;
select avg(price) from phones_samsung;

--Выбрать все телефоны Apple с ценой, котороя больше средней цены телефонов Apple
select * from phones_apple 
where price > (select avg(price) from phones_apple);

--Выбрать все телефоны Apple с ценой, котороя больше средней цены телефонов Samsung
select * from phones_apple 
where price > (select avg(price) from phones_samsung);

--Выбрать все телефоны Apple с ценой, котороя равна цене всех телефонов Samsung
select * from phones_apple 
where price in (select price from phones_samsung);

--Выбрать все телефоны Apple с ценой, котороя не равна цене всех телефонов Samsung
select * from phones_apple 
where price not in (select price from phones_samsung);

--Выбрать все телефоны Samsung с ценой, котороя меньше всех телефонов Apple, с ценой ниже 1000
select * from phones_samsung
where price < all (select price from phones_apple
                   where price < 1000);
                  
--Выбрать все телефоны Samsung с ценой, котороя больше всех телефонов Apple, с ценой ниже 1000
select * from phones_samsung
where price > all (select price from phones_apple
                   where price < 1000);
                  
--Выбрать все телефоны Samsung с ценой, котороя неравная всем телефонам Apple, с ценой ниже 1000
select * from phones_samsung
where price <> all (select price from phones_apple
                   where price < 1000);
                  
--Выбрать все телефоны Samsung с ценой, котороя меньше каких-либо телефонов Apple, с ценой ниже 1000
select * from phones_samsung
where price < any (select price from phones_apple
                   where price < 1000);
            
--Выбрать все телефоны Samsung с ценой, котороя больше каких-либо телефонов Apple, с ценой ниже 1000
select * from phones_samsung
where price > any (select price from phones_apple
                   where price < 1000);
                                 
--UNION
            
--Обьединить таблицы phones_apple и phones_samsung вертикально
select * from phones_apple where price < 1000
union all
select * from phones_samsung where price < 1000;

--Обьединить ram и price с таблиц phones_apple и phones_samsung вертикально
select ram, price from phones_apple where price < 1000
union all
select ram, price from phones_samsung where price < 1000;

--Обьединить ram и price с таблиц phones_apple и phones_samsung вертикально, без дубликатов
select ram, price from phones_apple where price < 1000
union
select ram, price from phones_samsung where price < 1000;

--GROUP BY

--Выбрать ram и количество всех телефонов Apple, сгрупированых по ram
select ram, count(*) from phones_apple
group by (ram);

--Выбрать ram и среднею цену всех телефонов Apple, сгрупированых по ram
select ram, avg(price) from phones_apple
group by (ram);

--Выбрать front_camera и среднею цену всех телефонов Apple, сгрупированых по front_camera
select front_camera, avg(price) from phones_apple
group by (front_camera);
                  




