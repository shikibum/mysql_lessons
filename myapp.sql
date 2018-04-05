drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float,
  rank enum('gold', 'silver', 'bronze')
);

insert into users (name, score, rank) values ('haku', 8.9, 'silver');
insert into users (name, score, rank) values ('yamato', 5.8, 'bronze');
insert into users (name, score, rank) values ('gino', 6.6, 'red');
insert into users (name, score) values ('Shura', 7.7);
insert into users (name, score) values ('nico', null);
insert into users (name, score) values ('peter', 9.9);

-- select * from users;
-- select * from users where rank = 'silver';
select * from users where rank = 2;
