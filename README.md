# BD2_Taller1
En este archivo se daran respuestas a las preguntas propuestas en el enunciado del taller.

## 1. Modelo relacional que soporta la totalidad de las funcionalidades descritas.
El diagra del modelo perteneciente a la base de datos propuesta, se encuentra en la carpeta "Documentacion" de este repositorio, en un archivo en formato PDF con el nombre "ModeloDatos"

## 2. Diccionario de datos.
El diccionario de datos de igual forma se encuentra en la carpeta llamada "Documentacion", en un archivo en formato PDF con el nombre de "DiccionarioDatos", donde se encuentra la estructura de todas las tablas de la base de datos.

## 3. Diseño de vistas (mín. 2) e índices (mín. 3, adicional a los PK). Describa textualmente las vistas e índices que deberían extender el modelo de datos.
* Vista "vstaUsuarioLocal": Esta vista esta diseñada para los usuarios de rol "Funcionario", donde se puede visualizar la cantidad de mascotas y la cantidad de dueños de mascotas por localidad.
* Vista "vstaVisitasVeterinarias": Esta vista esta diseñada para los usuarios de rol "Veterinaria", se listan las visitas creadas por todas la veterinarias mostrando la información de las mascotas y su fecha de registro para que la aplicación pueda hacer uso de estos campos y se generen filtros ya sea por nombre de mascota, fechas y lo ideal es que a cada usuario le muestre las visitas que este creo y no la de otros usuarios. 
* Los indices que fueron creados para la base son los siguientes, se decidio crear estos indices ya que se consideran que son los campos por los que se pueden llegar a generar bastantes consultas:
    * idx_barrio_nomBarrio
    * idx_localidad_nomLocalidad
    * idx_mascota_nomMascota
    * idx_mascota_edad
* a. ¿Las vistas que decide crear a qué requerimiento no funcional obedecen? Seguridad o facilidad de consulta. ¿Deberían ser vistas materializadas?
    * Las vistas que se crean pertenecen a requerimientos funcionales ya que son necesarios para el control y visualización de la información ingresada por las veterinarias y control y estadisticas para los funcionarios.
    * De las dos vistas creadas una de ellas es materializada por la posible cantidad de registros que se puedan generar para la misma y que no va a ser consultada tan regularmente ya que se pueden obtener estadisticas solo en ciertos periodos de tiempo.
* b. ¿Cuáles consultas a la base de datos, a partir de los requerimientos dados, pueden optimizarse mediante índices? ¿De qué tipos deben ser dichos índices?
    * Las consultas que deben hacer busquedas por nombres.

## 4. Script DDL a ser ejecutado en PostgreSQL. No se acepta el uso de herramientas de generación de código. Cree los índices previamente definidos utilizando los algoritmos dispuestos por el motor de base de datos
Los scripts que se utilizaron para la creación de las tablas, indices y vistas, se encuentran en la carpeta llamada "Scripts", cada archivo lleva un nombre significativo con la operacion realizada.

## 5. Evidencia de la ejecución del script en algún cliente de base de datos como pgAdmin.
En la carpeta llamada "Documentacion" se encuentra un archivo en formato PDF que contiene las imagenes de evidencia de ejecucion de cada uno de los scripts anteriormente mencionados, estos scripts se ejecutaron DBeaver en la version 21.2.0.