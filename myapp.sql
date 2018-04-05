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

-- select
--   name,
--   score,
--   if (score > 5.0, 'OK', 'NG') as result
-- from users;

-- select
--   name,
--   score,
--   case floor(score) % 2
--   when 0 then 'even'
--   when 1 then 'odd'
--   else null
--   end as type
-- from users;

select
  name,
  score,
  case
  when score > 8.0 then 'Team-A'
  when score > 6.0 then 'Team-B'
  else 'Team-C'
  end as team
from users;
