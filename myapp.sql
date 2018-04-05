drop table if exists users;
create table users (
  id int unsigned,
  name varchar(20),
  score float
);

-- insert into users (id, name, score) values (1, 'haku', 8.9);
-- insert into users (id, name, score) values (2, 'yamato', 5.8);
-- insert into users (id, name, score) values (3, 'gino', 6.6);
-- insert into users (id, name, score) values (4, 'nico', null);

insert into users (id, name, score) values
  (1, 'haku', 8.9),
  (2, 'yamato', 5.8),
  (3, 'gino', 6.6),
  (4, 'nico', null);

select * from users;
