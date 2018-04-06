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
insert into users (name, score) values ('peter', 4.0);

start transaction;
update users set score = score - 1.2 where name = 'haku';
update users set score = score + 1.2 where name = 'yamato';
-- commit;
rollback;

select * from users;
