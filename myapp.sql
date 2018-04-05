drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20) unique,
  -- score float not null
  score float default 0.0
);
desc users;

insert into users (name, score) values (s'haku', 8.9);
insert into users (name, score) values (s'yamato', 5.8);
insert into users (name, score) values (s'gino', 6.6);

-- insert into users (id, name, score) values (1, 'haku', 8.9);
-- insert into users (id, name, score) values (2, 'yamato', 5.8);
-- insert into users (id, name, score) values (3, 'gino', 6.6);
-- insert into users (id, name, score) values (4, 'nico', null);
-- insert into users (id, name) values (5, 'shura');
-- insert into users (id, name) values (6, 'shura');


select * from users;
