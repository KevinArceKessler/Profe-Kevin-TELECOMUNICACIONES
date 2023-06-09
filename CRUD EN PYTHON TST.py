import mysql.connector


class Conectar():

    def __init__(self) -> None:
        try:
            self.conexion = mysql.connector.connect(
                host = 'localhost',
                port = 3306,
                user = 'root',
                password = 'Quebracho00',
                db='bd_ejemplo_tst'
            )
            if self.conexion.is_connected():
                print("LA CONEXION FUE EXITOSA")

        except:
            print("NO SE PUDO CONETAR A LA BASE DE DATOS")

#CRUD
def ListadoDeDispositivos(self):
    if self.conexion.is_connected():
        try:
            cursor = self.conexion.cursor()
            senteciaSQL="SELECT * FROM dispositivostv"
            cursor.execute(senteciaSQL)
            resultado= cursor.fetchall()
            cursor.close()
            return resultado        
        
        except mysql.connector.Error as descripcionDelError:
             print("¡Hubo un error al intentar conctar la Base de Datos", descripcionDelError)


def InsertarDispositivo(self, Dispositivo):
     if self.conexion.is_connected():
        try:
            cursor = self.conexion.cursor()
            senteciaSQL="INSERT INTO dispositivostv (%s, %s, %s, %s)"
            datos= (Dispositivo.Nombre_dispositivo, Dispositivo.Unidad_de_medida, Dispositivo.Precio, Dispositivo.Stock)
            cursor.execute(senteciaSQL,datos)
            cursor.commit()       
            cursor.close()
                    
        except mysql.connector.Error as descripcionDelError:
            print("¡Hubo un error al intentar conctar la Base de Datos", descripcionDelError)

