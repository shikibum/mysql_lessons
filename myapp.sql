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

-- select * from users where name like 'h%';
-- select * from users where name like '%h%';
-- select * from users where name like binary 'S%';
select * from users where name like binary '____';
select * from users where name like binary '_i%';
