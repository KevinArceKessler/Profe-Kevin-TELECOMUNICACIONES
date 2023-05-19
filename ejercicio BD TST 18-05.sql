CREATE DATABASE BD_EJEMPLO_TST;

use BD_EJEMPLO_TST;
CREATE TABLE Persona(DNI int, Nombre varchar(30),Telefono int); 
CREATE TABLE Animal(Raza varchar(20), Nombre varchar(30),Fecha_Nacimiento datetime); 

insert into BD_EJEMPLO_TST.Persona(DNI,Nombre,Telefono)
values(30123132,'Emilio', 15203040);
insert into BD_EJEMPLO_TST.Persona(DNI,Nombre,Telefono)
values(30123132,'Yamila', 15203040);
insert into BD_EJEMPLO_TST.Persona(DNI,Nombre,Telefono)
values(25444888,'LAura', 15010101);
insert into BD_EJEMPLO_TST.Persona(DNI,Nombre,Telefono)
values(25666999,'Maria Belen', 15405050);
insert into BD_EJEMPLO_TST.Animal(Raza, Nombre,Fecha_Nacimiento)
values('salchicha', 'negrito', '2023-02-24');
SELECT * from BD_EJEMPLO_TST.Persona;
SELECT * from BD_EJEMPLO_TST.Animal;
drop table BD_EJEMPLO_TST.Persona;