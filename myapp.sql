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

-- update users set score = 5.9;
-- update users set score = 5.9 where id = 1;
-- update users set name = 'maharo', score = 2.2 where name = 'nico';

-- delete from users;
delete from users where id = 2;
delete from users where score <= 7.0;

select * from users;
