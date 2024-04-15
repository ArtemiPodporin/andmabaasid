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
SQL SERVER MANAGER STUDIO

--ab loomine

CREATE DATABASE KonjajevLOGITpv22;

USE KonjajevLOGITpv22;

--tabeli loomine
CREATE TABLE opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
address TEXT,
sisseastumis_kp date
);

--primary key - primaarne võti mis annab unikaalsus
--identity(1,1) - määrab igaühine oma numbri
SELECT * FROM opilane;

--andmete lisamine
INSERT INTO opilane(eesnimi,perenimi,isikukood,address,sisseastumis_kp, ryhmId)
VALUES(
'Test', 'Test', '6784', 'Tallinn', '2023-08-16', 1);
SELECT * FROM opilane;


--tabeli Ryhm loomine
CREATE TABLE ryhm(
ryhmId int Primary Key identity(1,1),
ryhmNimetus varchar(20) UNIQUE,
osakond char (3));
SELECT	* FROM	ryhm;

INSERT INTO ryhm (ryhmNimetus,osakond)
VALUES('LOGITpv24', 'IT');
SELECT	* FROM	ryhm;
SELECT	* FROM	opilane;

--FOREIGN KEY -->PK teises tabelis
ALTER TABLE opilane ADD ryhmId int

--tabeli opilane uuendamine
Update opilane SET ryhmId=2

--FK lisamine opilane tabelisse
ALTER TABLE opilane 
ADD FOREIGN KEY (ryhmId) REFERENCES ryhm(ryhmId);

--tabeli ryhmajuhataja loomine
CREATE TABLE ryhmajuhataja(
ryhmajuhatajaId int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25),
tel varchar(15)
);
SELECT	* FROM	ryhmajuhataja;

INSERT INTO ryhmajuhataja (eesnimi,perenimi,tel)
VALUES('Nikita', 'konjajev','3124124');
SELECT	* FROM	ryhm;
SELECT	* FROM	ryhmajuhataja;

--FOREIGN KEY -->PK teises tabelis
ALTER TABLE ryhm ADD ryhmajuhatajaId int
ALTER TABLE ryhm DROP COLUMN ryhmajuhataja

--tabeli opilane uuendamine
Update ryhm SET ryhmajuhatajaId=1

--FK lisamine opilane tabelisse
ALTER TABLE ryhm 
ADD FOREIGN KEY (ryhmajuhatajaId) REFERENCES ryhmajuhataja(ryhmajuhatajaId);

--tabeli hinnang loomine
CREATE TABLE hinnang(
hinnangId int Primary Key identity(1,1),
kuupaev date,
opilaneId int,
ryhmajuhatajaId int,
hinnang varchar(25)
);
SELECT	* FROM	hinnang;

INSERT INTO hinnang (kuupaev, opilaneId, ryhmajuhatajaId, hinnang)
VALUES('2023-08-16', '1', '1', 'hasti');

SELECT	* FROM	hinnang;
SELECT	* FROM	opilane;
SELECT	* FROM	ryhmajuhataja;



--FOREIGN KEY -->PK teises tabelis
ALTER TABLE hinnang ADD FOREIGN KEY (ryhmajuhatajaId) REFERENCES ryhmajuhataja(ryhmajuhatajaId);
ALTER TABLE hinnang ADD FOREIGN KEY (opilaneId) REFERENCES opilane(opilaneId);