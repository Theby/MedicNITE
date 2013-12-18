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

Set up: Cómo comenzar a trabajar y aspectos básicos necesarios

1) realizar un clone del repositorio:
	"git clone https://myuser@github.com/PBD-InforNITE/MedicNITE.git "nombre""
Donde myuser es tu nombre de usuario y "nombre" es el nombre de la carpeta donde se guardará el repositorio,
si "nombre" no se especifica se creará una carpeta llamada MedicNITE que contendrá al repositorio.

2) Luego realizar cd "nombre" o MedicNite según corresponda.
Finalmente:
	"git pull" o bien "git pull origin master"

Para actualizar todo el contenido

3) Ingresar a la carpeta del proyecto
	"cd MedicNITE/MedicNITE_p1"

MedicNITE_p1 corresponde a la carpeta del proyecto, los siguientes pasos deben ejecutarse desde
dentro de esta carpeta

4) sincronizar gemas de proyecto

Para sincronizar las gemas con las que el proyecto utiliza y las instaladas en el computador, usar el comando: 
	"bundle install"

La cual intalara las versiones correspondientes para que exista compatibilidad.

		ERRORES CONOCIDOS:
			>Error installing mysql2 (0.3.14)
			Para resolver esto se debe tener previamente instalada la gema y librerias necesarias de mysql2
				"sudo apt-get install libmysql-ruby libmysqlclient-dev"
				"gem install mysql2 -v 0.3.14"


5) Crear base de datos

Si es primera vez que se carga el proyecto, es necesario crear la base de datos que el proyecto descargado
utilizará. Para esto se usa el comando:
	"rake db:create"

		ERRORES CONOCIDOS:
			>Couldn't create database for {"adapter"=>"mysql2", "encoding"=>"utf8", "database"=>"MedicNITE_p1_development", "pool"=>5, "username"=>"root", "password"=>"root", "socket"=>"/var/run/mysqld/mysqld.sock"}, {:charset=>"utf8", :collation=>"utf8_unicode_ci"}
			(If you set the charset manually, make sure you have a matching collation)
			Tras varias busquedas en la web me dí cuenta que hay millones de razones por la que esto puede suceder,
			en mi caso ocurrió que no estaba instalado mysql (es decir no tenía un socket) por lo que la solución fue
				"sudo apt-get install mysql-client-5.1"
				"sudo apt-get install mysql-server-5.1"
			Y por seguridad
				"gem install mysql"
				"gem install mysql2"

6) Iniciar Servidor Rails

Para iniciar el servidor, usar el comando: 
	"rails s"

Esto permite ingresar a la pagina mediante http://0.0.0.0:3000

		ERRORES CONOCIDOS:
			Migrations are pending; run 'bin/rake db:migrate RAILS_ENV=development' to resolve this issue.
			(No resuelto)

7) Recurso Básico

Para generar un recurso básico [model | controller | view], usar el comando: 
	"rails g [Recurso Básico] [Nombre del recurso]""

8) Entidad principal

Para generar una entidad principal (requiere modelo, controlador, y vistas asociadas al CRUD), usar: 
	"rails g scaffold [Nombre de la entidad principal] [nombre del atributo 0]:[tipo de dato] [nombre del atributo 1]:[tipo de dato]" ...

9) Actualizar la base de datos en Rails

Luego de generar codigo que tiene que ver con la base de datos. Si se realiza un cambio en rails referente a un modelo 
(ya sea generar un modelo o scaffold), es necesario que la base de datos obedezca la dirección en que se encamina el 
desarrollo en el framework. El sistema que se utiliza para esto, es la migración; ya que identifica lo cambiado en el 
proyecto, y lo refleja en la base de datos. Para esto se usa el comando:
	"rake db:migrate"
