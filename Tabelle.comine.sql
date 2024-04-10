SQL SERVER MANAGEMENT STUUDIO

--ab loomine
c

USE PodporinLOGIpv22;
--TABELI LOOMINE
CREATE TABLE opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date
);
--primary key - primaaarne võti mis annab unikaalsus
 --identity(1,1) määrab igaühele oma numbri

 SELECT * fROM opilane;


 SELECT * fROM opilane;
 --andmete lisamine
 INSERT INTO opilane(
 eesnimi, perenimi, isikukood, aadress, sisseastumis_kp)
 VALUES(
 'Oleg', 'Sasdsel', '70450988723', 'Tallinn', '2023-08-16');
 SELECT * FROM opilane;