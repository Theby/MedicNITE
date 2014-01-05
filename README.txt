MedicNITE
=========

Proyecto de Base de Datos: MedicNITE

Un proyecto para manejar recintos, areas y personas en un centro de salud publico.

La fecha de entrega es: 08-01-2014


=========

Si de verdad necesitan realizar pruebas que podrían dejar la embarrada y arruinar todo,
hagan un BRANCH, pero si hacen un BRANCH el MASTER NO SE TOCA NI PORSIACASO!
Si es necesario trabajar en el master, se hace un BRANCH de él para luego hacer un merge, así
la BRANCH creada con anterioridad puede actualizarse según corresponda.

De forma natural todos trabajaremos directamente en el master.


Cualquier duda de Git me preguntan

=========

SET UP framework To DB

Cómo comenzar a trabajar y aspectos básicos necesarios

0) Instalar Ruby on Rails + MySQL:
Estos pasos quizá puedan variar para distintas distribuciones de Linux. Pero deben ser parecidas a este tutorial:
http://gorails.com/setup/ubuntu/13.10

1) realizar un clone del repositorio:
	git clone https://myuser@github.com/PBD-InforNITE/MedicNITE.git "nombre"
Donde myuser es tu nombre de usuario y "nombre" es el nombre de la carpeta donde se guardará el repositorio,
si "nombre" no se especifica se creará una carpeta llamada MedicNITE que contendrá al repositorio.

2) sincronizar gemas de proyecto

Una vez clonado el proyecto de git se deben sincronizar las gemas de Ruby del proyecto con las del computador.
Para sincronizar las gemas con las que el proyecto utiliza y el propio repositorio, usar el comando: 
	"bundle install"

3) Crear base de datos

Si es primera vez que se carga el proyecto, es necesario crear la base de datos que el proyecto descargado
utilizará. Para esto se usa el comando:
	"rake db:create"

4) Iniciar Servidor Rails

Para iniciar el servidor, usar el comando: 
	"rails s"

5) Recurso Básico

Para generar un recurso básico [model | controller | view], usar el comando: 
	"rails g [Recurso Básico] [Nombre del recurso]

6) Entidad principal

Para generar una entidad principal (requiere modelo, controlador, y vistas asociadas al CRUD), usar: 
	"rails g scaffold [Nombre de la entidad principal] [nombre del atributo 0]:[tipo de dato] [nombre del atributo 1]:[tipo de dato]" ...

7) Actualizar la base de datos en Rails

Luego de generar codigo que tiene que ver con la base de datos. Si se realiza un cambio en rails referente a un modelo 
(ya sea generar un modelo o scaffold), es necesario que la base de datos obedezca la dirección en que se encamina el 
desarrollo en el framework. El sistema que se utiliza para esto, es la migración; ya que identifica lo cambiado en el 
proyecto, y lo refleja en la base de datos. Para esto se usa el comando:
	"rake db:migrate"
=========

SET UP DB To framework

BASE DE DATOS

Dado que se está trabajando desde la base de datos a la aplicación, es necesario cargar el script por defecto en la consola de mysql. Para esto:
	1.	Ingresar en la terminal: $ mysql -u root -p
	2.	Ingresar la password del usuario de la bd.
	3.	Ingresar a la base de datos de desarrollo:
			mysql>	use MedicNITE_p1_development;
	4.	Revisar que la base de datos esté vacía con:
			mysql>	show tables;
		Si no está vacía, botar la bd y crearla denuevo, escribir:
			mysql>	drop database MedicNITE_p1_development;
			mysql>	create database MedicNITE_p1_development;
	5.	Repetir el paso 3.
	6.	Ingresar el script por defecto llamado "script_pordefecto.sql"
		(Hay 2 maneras para ingresar el script), copieando el contenido de este y pegarlo en la bash de mysql que usa la bd a desarrollar.

¡OJO!
CONCIDERACIONES APLICACIÓN

Si se realizan scaffoldings, tener en cuenta que el campo "created_at" y "updated_at" que el scaffold crea por defecto para cada modelo, no están considerados en la db. Por lo tanto es necesario borrar los detalles en las vistas que consideran estos cambios para evitar errores. Yo solo he encontrado dificultad en una vista, en la carpeta "~/app/views/[nombre_scaffold+'s']/index.html.erb" borrar las 2 lineas en donde dice "created_at".

=========

GEMAS USADAS
Estas se encuentran en el archivo "Gemfile

Gemas de Bootstrap:

gem "therubyracer"
gem "less-rails"
gem "twitter-bootstrap-rails"

Gema conector al motor de datos MySQL:

# Use mysql as the database for Active Record
gem 'mysql2'

Gema para la autentificación de usuarios:

# Acceso a cuentas.
gem 'devise'

