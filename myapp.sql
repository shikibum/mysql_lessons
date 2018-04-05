drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float,
  coins set('gold', 'silver', 'bronze')
);

insert into users (name, score, coins) values ('haku', 8.9, 'gold,silver');
insert into users (name, score, coins) values ('yamato', 5.8, 'silver,bronze');
insert into users (name, score, coins) values ('gino', 6.6, 'red');
insert into users (name, score) values ('Shura', 7.7);
insert into users (name, score) values ('nico', null);
insert into users (name, score) values ('peter', 9.9);

-- select * from users;
-- select * from users where coins = 'gold,silver';
-- select * from users where coins like '%silver%';
select * from users where coins = 3;
