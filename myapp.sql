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

alter table users add index index_score (score);
-- show index from users;
-- explain select * from users where score > 5.0;
-- explain select * from users where name = 'haku';

alter table users drop index index_score;
-- show index from users;
