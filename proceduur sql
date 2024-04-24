
create table film(
filmid int primary key AUTO_INCREMENT,
filmnimetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int);

CREATE PROCEDURE `otsing1taht`(IN `taht` CHAR(1)) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
  
  begin
	select * from film
	where filmnimetus like concat(taht,'%');
end;
