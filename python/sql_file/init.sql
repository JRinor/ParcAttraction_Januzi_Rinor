DROP TABLE IF EXISTS attraction;

CREATE TABLE attraction (
    attraction_id int auto_increment,
    primary key(attraction_id),
    nom varchar(255) not null,
    description varchar(255) not null,
    difficulte int,
    visible bool default true
);

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    users_id int auto_increment,
    primary key(users_id),
    name varchar(255) not null,
    password varchar(255) not null
);

DROP TABLE IF EXISTS Notes;

CREATE TABLE Notes(
  notes_id int auto_increment,
  primary key(notes_id),
  text varchar(255), -- avis textuel 
  etoiles int not null -- notes /5 etoiles
);

DROP TABLE IF EXISTS Note_Attraction;

CREATE TABLE Note_Attraction(
  notes_id int,
  attraction_id int,
  primary key(notes_id, attraction_id),
  foreign key(notes_id) references Notes(notes_id),
  foreign key(attraction_id) references attraction(attraction_id)
);