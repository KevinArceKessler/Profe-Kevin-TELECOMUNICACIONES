use bd_ejemplo_tst;

INSERT INTO dispositivostv (Nombre_dispositivo, Unidad_de_medida, Precio, Stock) VALUES("QuantumHive VR", "Unidades",3258,2000);

SELECT * FROM dispositivostv;

UPDATE dispositivostv SET Precio= 5000, Stock = 1000 WHERE Nombre_dispositivo = "BioGlow Sleep";

DELETE from dispositivostv WHERE Nombre_dispositivo = "BioGlow Sleep";

/*
CRUD
C: Create/Insert
R: Read/Select
U: Update
D: Delete
*/