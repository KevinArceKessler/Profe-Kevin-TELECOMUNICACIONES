CREATE TABLE if not exists Estado(Id_Estado int);
CREATE TABLE if not exists DispositivosTV(
Id_DispositivosTV int primary key not null auto_increment,
Nombre_dispositivo varchar(20) not null,
Unidad_de_medida varchar(20) not null,
Precio int,
Stock int,
Capacidad varchar(10),
Alimentacion varchar(10),
Obser varchar(40),
Id_Estado int,
FOREIGN KEY(Id_Estado) REFERENCES DispositivosTV(Id_DispositivosTV)
);