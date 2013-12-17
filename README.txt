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
	git clone https://myuser@github.com/PBD-InforNITE/MedicNITE.git "nombre"
Donde myuser es tu nombre de usuario y "nombre" es el nombre de la carpeta donde se guardará el repositorio,
si "nombre" no se especifica se creará una carpeta llamada MedicNITE que contendrá al repositorio.

=========

Comandos de Rails:

Al tener el proyecto clonado de git. setear la terminal dentro de la carpeta clonada.

Para sincronizar las gemas con las que el proyecto utiliza y el propio repositorio, usar el comando: 
"bundle install"

Si es primera vez que se carga el proyecto, es necesario crear la base de datos que el proyecto descargado
utilizará. Para esto se usa el comando:
"rake db:create"

Para iniciar el servidor, usar el comando: 
"rails s"

Para generar un recurso básico [model | controller | view], usar el comando: 
"rails g [Recurso Básico] [Nombre del recurso]

Para generar una entidad principal (requiere modelo, controlador, y vistas asociadas al CRUD), usar: 
"rails g scaffold [Nombre de la entidad principal] [nombre del atributo 0]:[tipo de dato] [nombre del atributo 1]:[tipo de dato]" ...

Luego de generar codigo que tiene que ver con la base de datos. Si se realiza un cambio en rails referente a un modelo 
(ya sea generar un modelo o scaffold), es necesario que la base de datos obedezca la dirección en que se encamina el 
desarrollo en el framework. El sistema que se utiliza para esto, es la migración; ya que identifica lo cambiado en el 
proyecto, y lo refleja en la base de datos. Para esto se usa el comando:
"rake db:migrate"
