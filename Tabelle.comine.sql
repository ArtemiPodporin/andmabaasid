SQL SERVER MANAGEMENT STUUDIO

--ab loomine
CREATE Database ArtemiPodporinLOGITpv22;

USE ArtemiPodporinLOGITpv22;
--TABELI LOOMINE
CREATE TABLE OPILANE(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date
);
--primary key - primaaarne võti mis annab unikaalsus
 --identity(1,1) määrab igaühele oma numbri
 select * from opilane;
INSERT INTO opilane(eesnimi,perenimi,isikukood,aadress,sisseastumis_kp)
VALUES(
'DHCp', 'DNS', '50609020223', 'SSH', '2023-09-2');
SELECT * FROM opilane;


 --andmete lisamine
 INSERT INTO opilane(
 eesnimi, perenimi, isikukood, aadress, sisseastumis_kp)
 VALUES(
 'Oleg', 'Sasdsel', '70450988723', 'Tallinn', '2023-08-16');
 SELECT * FROM opilane;

 create table RYHM(
 ryhmid int primary key identity(1,1),
 ryhmnimetus varchar(20) UNIQUE,
 osakond char(3));
 SELECT * FROM RYHM;
 INSERT INTO RYHM(RYHMNIMETUS, osakond)
 VALUES ('LOGITpv22','it');

 SELECT * FROM RYHM;
 select * from opilane;
 --FOREING KEY --->pk TEISES TABELIS
 ALTER TABLE opilane ADD ryhmid INT

 --tabeli opilane uuendamine
 UPDATE opilane set ryhmid=2;

 --Fk lisamine opilane tablelisse
 Alter table opilane 
 add foreign key (ryhmid) references RYHM(ryhmid)

 insert into opilane(
 eesnimi, perenimi, isikukood, aadress, sisseastumis_kp, ryhmid)
 VALUES
 ('TEST', 'TEST', '50904020223', 'TALLINN', '2023-08-26', 1);
 SELECT * FROM opilane;

--table ryhmajuhataja
create table ryhmajuhataja(
tyhmaid int primary key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25),
telefon varchar(13));

insert into ryhmajuhataja(eesnimi, perenimi, telefon)
values ('Jekaterina', 'Rätsep', '123456')
select * from ryhmajuhataja;
select * from ryhm;

ALTER TABLE ryhm ADD juhatajaID INT
UPDATE ryhm set juhatajaID=1;
 Alter table ryhm
 add foreign key (juhatajaID) references ryhmajuhataja(juhatajaID)

  INSERT INTO RYHM(RYHMNIMETUS,osakond, juhatajaID)
 VALUES ('LOGITpv21','it', 1);


 ---hinnang
 create table hinnang(
hinnangID int primary key identity(1,1),
kuupaev date ,
opilaneID varchar,
ryhmajuhataja varchar,
hinnang varchar(25));

select * from hinnang;

  INSERT INTO hinnang(kuupaev, opilaneID, ryhmajuhataja, hinnang ) 
 VALUES ('2023-9-10','1', '1', 'hästi');

 select * from hinnang;
 select * from opilane;
 select * from ryhmajuhataja;

ALTER TABLE hinnang ADD ryhmajuhataja INT;