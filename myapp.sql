drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float
);

insert into users (name, score) values ('haku', 8.9);
insert into users (name, score) values ('yamato', 5.8);
insert into users (name, score) values ('gino', 6.6);
insert into users (name, score) values ('Shura', 7.7);
insert into users (name, score) values ('nico', null);
insert into users (name, score) values ('peter', 9.9);

-- select length('hello'); -- 5
-- select substr('hello', 2); -- ello
-- select substr('hello', 2, 3); -- ell 2文字目以降の3文字
-- select lower('Hello'); -- hello
-- select upper('Hello'); -- HELLO
-- select concat('hello', 'world'); -- helloworld

-- select length(name), name from users order by length(name);
select length(name) as len, name from users order by len;
