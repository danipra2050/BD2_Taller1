# BD2_Taller1
En este archivo se daran respuestas a las preguntas propuestas en el enunciado del taller.

## 1. Modelo relacional que soporta la totalidad de las funcionalidades descritas.
El diagra del modelo perteneciente a la base de datos propuesta, se encuentra en la carpeta "Documentacion" de este repositorio, en un archivo en formato PDF con el nombre "ModeloDatos"

## 2. Diccionario de datos.
El diccionario de datos de igual forma se encuentra en la carpeta llamada "Documentacion", en un archivo en formato PDF con el nombre de "DiccionarioDatos", donde se encuentra la estructura de todas las tablas de la base de datos.

## 3. Diseño de vistas (mín. 2) e índices (mín. 3, adicional a los PK). Describa textualmente las vistas e índices que deberían extender el modelo de datos.
* Vista "vstaUsuarioLocal": Esta vista esta diseñada para los usuarios de rol "Funcionario", donde se puede visualizar la cantidad de mascotas y la cantidad de dueños de mascotas por localidad.
* Vista "vstaVisitasVeterinarias": Esta vista esta diseñada para los usuarios de rol "Veterinaria", se listan las visitas creadas por todas la veterinarias mostrando la información de las mascotas y su fecha de registro para que la aplicación pueda hacer uso de estos campos y se generen filtros ya sea por nombre de mascota, fechas y lo ideal es que a cada usuario le muestre las visitas que este creo y no la de otros usuarios. 