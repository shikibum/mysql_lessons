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

drop table if exists users_with_team;
create table users_with_team as
select
  id,
  name,
  score,
  case
  when score > 8.0 then 'Team-A'
  when score > 6.0 then 'Team-B'
  else 'Team-C'
  end as team
from users;

-- select count(score) from users_with_team;
-- select count(id) from users_with_team;
-- select count(*) from users_with_team;

-- select sum(score) from users_with_team;
-- select min(score) from users_with_team;
-- select max(score) from users_with_team;
-- select avg(score) from users_with_team;

select distinct team from users_with_team;
select count(distinct team) from users_with_team;
