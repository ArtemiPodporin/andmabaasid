SQL SERVER MANAGEMENT STUUDIO

--ab loomine
CREATE DATABASE PodporinLOGIpv22;

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
