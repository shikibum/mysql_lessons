drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float
);

insert into users (name, score) values ('haku', 8.9);
insert into users (name, score) values ('yamato', 5.8);
insert into users (name, score) values ('gino', 6.6);
insert into users (name, score) values ('shura', 7.7);
insert into users (name, score) values ('nico', null);
insert into users (name, score) values ('peter', 9.9);

-- select * from users;
-- select id, name from users;
-- select * from users where score >= 6.0 ;
-- select * from users where score >= 3.0 and score <= 6.0 ;
-- select * from users where score between 3.0 and 6.0 ;
select * from users where name = 'haku' or name = 'shura';
select * from users where name in ('haku', 'shura');
