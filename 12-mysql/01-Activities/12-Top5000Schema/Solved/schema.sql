# DROP DATABASE IF EXISTS top_songsDB;
# CREATE database top_songsDB;

# USE top_songsDB;

CREATE TABLE top5000 (
  position INT NOT NULL,
  artist VARCHAR(100) not NULL,
  song VARCHAR(100) not NULL,
  year INT not NULL,
  worldscore int not null,
  usascore int not null,
  ukscore int not null,
  eurscore int not null,
  otherscore int not null
);

create table top_albums (
  position INT NOT NULL,
  artist VARCHAR(100) NULL,
  song VARCHAR(100) NULL,
  year INT NULL,
  worldscore DECIMAL(10,4) NULL,
  usascore DECIMAL(10,4) NULL,
  ukscore DECIMAL(10,4) NULL,
  eurscore DECIMAL(10,4) NULL,
  otherscore DECIMAL(10,4) NULL,
  PRIMARY KEY (position)
);

alter table top5000
modify column worldscore decimal(10,4);
alter table top5000
modify column usascore decimal(10,4);
alter table top5000
modify column ukscore decimal(10,4);
alter table top5000
modify column eurscore decimal(10,4);
alter table top5000
modify column otherscore decimal(10,4);



SELECT * FROM top5000;



-- insert into top5000 values (1,Bing Crosby,White Christmas,1942,39.903,23.929,5.7,2.185,0.54);
