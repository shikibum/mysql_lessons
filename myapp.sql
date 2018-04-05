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

-- update users set score = score * 1.2 where id % 2 = 0;
--
-- select * from users;

-- select round(5.355); -- 5
-- select round(5.355, 1); -- 5.4
-- select floor(5.833); -- 5
-- select ceil(5.238); -- 6
-- select rand();

select * from users order by rand() limit 1;
