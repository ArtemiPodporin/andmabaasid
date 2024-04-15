create database kinoteatrPodporin;
use kinoteatrPodporin;

--table filmtype
create table filmType(
filmTypeID int Primary key identity(1,1),
filmType varchar(25),
kirjeldus text);
insert into filmType (filmType, kirjeldus)
values ('3D', 'väga põnev 3D efekt,'), ('2D', 'väga põnev 2D efekt'), ('1D', 'väga põnev 1D efekt'), ('4D', 'väga põnev 4D efekt'), ('5D', 'väga põnev 5D efekt');
select * from filmType;

--table zanr
create table zanr(
zanrID int Primary key identity(1,1),
zanrNimi varchar(25),
zanrKirjeldus text);
insert into zanr (zanrNimi, zanrKirjeldus)
values ('Chorar', 'Chorar on hirmutav filmid');
select * from zanr;

--table rezisor
create table rezisor(
rezisorID int Primary key identity(1,1),
eesnimi varchar(25),
perenimi varchar(25));
insert into rezisor (eesnimi, perenimi)
values ('Kevin', 'Tarantino'), ('Artemi', 'Mihhalenkov'), ('Georgi', 'Kadurin');
select * from rezisor;
delete from rezisor;
drop table rezisor


-- table kinokava
create table kinokava(
kinokavaID int Primary key identity(1,1),
kuupaev datetime,
filmNimetus int,
piletihind int);
insert into kinokava (kuupaev, filmNimetus, piletihind)
values ('09.15.2023', 4,12);
select * from kinokava;
drop table kinokava


--table piletiMyyk
create table piletiMyyk(
piletiMyykId int Primary Key identity(1,1),
kogus int,
kinokavaId int)
insert into piletiMyyk (kogus, kinokavaId)
values (11, 1)
select * from piletiMyyk
drop table piletiMyyk


--table film
create table film(
filmID int Primary Key identity(1,1),
filmNimetus varchar(25),
zanrID int,
pikkus int,
rezisorID int,
filmTypeID int,
reklaam	image);
insert into film(zanrID,rezisorID,filmTypeID,filmNimetus,pikkus,reklaam)
values (1,1,1, 'suvi', '150','0');
select * from film;
drop table film



--FK: film -->filmType
alter table film add foreign key (filmTypeID) references filmType (filmTypeID);

--FK: film --> zanr
alter table film add foreign key (zanrID) references zanr (zanrID);

--FK: film --> rezisor
alter table film add foreign key (rezisorID) references rezisor (rezisorID);

--FK: film --> piletiMyyk
alter table piletiMyyk add foreign key (kinokavaId) references kinokava (kinokavaID);

--FK: film --> kinokava
alter table  kinokava add foreign key (filmNimetus) references film(filmID);

select * from zanr
select * from rezisor
select * from filmtype
select * from film
select * from piletiMyyk
select * from kinokava
select * from film