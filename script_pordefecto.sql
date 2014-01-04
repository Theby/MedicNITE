/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     03-01-14 19:08:51                            */
/*==============================================================*/


drop table if exists areas;

drop table if exists asignacionTipos;

drop table if exists asignaciones;

drop table if exists camas;

drop table if exists desocupamientoRecintos;

drop table if exists habitacions;

drop table if exists historialUsuarios;

drop table if exists observaciones;

drop table if exists pacienteEstados;

drop table if exists pacienteTipos;

drop table if exists pacientes;

drop table if exists personalRubroTipos;

drop table if exists personalRubros;

drop table if exists personas;

drop table if exists reservaTipos;

drop table if exists reservas;

drop table if exists salas;

drop table if exists usuarios;

/*==============================================================*/
/* Table: areas                                                 */
/*==============================================================*/
create table areas
(
   idArea               int not null auto_increment,
   especialidadArea     varchar(20) not null,
   primary key (idArea)
);

/*==============================================================*/
/* Table: asignacionTipos                                       */
/*==============================================================*/
create table asignacionTipos
(
   idTipoAsignacion     int not null auto_increment,
   tipoAsignacion       varchar(40),
   primary key (idTipoAsignacion)
);

/*==============================================================*/
/* Table: asignaciones                                          */
/*==============================================================*/
create table asignaciones
(
   idAsignacion         int not null auto_increment,
   perIdPersona         int,
   pacIdPersona         int,
   idPersona            int,
   id                   int not null default 0,
   idSala               int,
   idTipoAsignacion     int not null,
   idCama               int,
   idArea               int,
   iniFechaAsignacion   date not null,
   iniHoraAsignacion    time not null,
   finFechaAsignacion   date,
   finHoraAsignacion    time,
   primary key (idAsignacion)
);

/*==============================================================*/
/* Table: camas                                                 */
/*==============================================================*/
create table camas
(
   idCama               int not null auto_increment,
   idArea               int,
   idHabitacion         int,
   idSala               int,
   codVisibleCama       varchar(5),
   estadoCama           varchar(10) not null,
   tipoCama             varchar(20),
   primary key (idCama)
);

/*==============================================================*/
/* Table: desocupamientoRecintos                                */
/*==============================================================*/
create table desocupamientoRecintos
(
   idDesocupamientoRecinto int not null auto_increment,
   idAsignacion         int,
   fechaDesocupamiento  date not null,
   horaDesocupamiento   time not null,
   primary key (idDesocupamientoRecinto)
);

/*==============================================================*/
/* Table: habitacions                                           */
/*==============================================================*/
create table habitacions
(
   idHabitacion         int not null auto_increment,
   idSala               int,
   codVisibleHabitacion varchar(5),
   tipoHabitacion       varchar(20),
   capacidadHabitacion  int,
   estadoHabitacion     varchar(10) not null,
   primary key (idHabitacion)
);

/*==============================================================*/
/* Table: historialUsuarios                                     */
/*==============================================================*/
create table historialUsuarios
(
   idHistorialUsuarios  int not null auto_increment,
   id                   int not null default 0,
   operacionUsuario     varchar(20) not null,
   detalleOperacion     text,
   horaOperacion        time,
   fechaOperacion       date,
   primary key (idHistorialUsuarios)
);

/*==============================================================*/
/* Table: observaciones                                         */
/*==============================================================*/
create table observaciones
(
   idObservacion        int not null auto_increment,
   idPersona            int not null,
   perIdPersona         int not null,
   pacIdPersona         int not null,
   detalleObservacion   text not null,
   primary key (idObservacion)
);

/*==============================================================*/
/* Table: pacienteEstados                                       */
/*==============================================================*/
create table pacienteEstados
(
   idEstadoPaciente     int not null auto_increment,
   estadoPaciente       varchar(40),
   primary key (idEstadoPaciente)
);

/*==============================================================*/
/* Table: pacienteTipos                                         */
/*==============================================================*/
create table pacienteTipos
(
   idTipoPaciente       int not null auto_increment,
   tipoPaciente         varchar(20),
   primary key (idTipoPaciente)
);

/*==============================================================*/
/* Table: pacientes                                             */
/*==============================================================*/
create table pacientes
(
   perIdPersona         int not null,
   idPersona            int not null,
   idTipoPaciente       int not null,
   idEstadoPaciente     int not null,
   primary key (perIdPersona, idPersona)
);

/*==============================================================*/
/* Table: personalRubroTipos                                    */
/*==============================================================*/
create table personalRubroTipos
(
   idTipoPersonalRubro  int not null auto_increment,
   tipoPersonalRubro    varchar(20),
   primary key (idTipoPersonalRubro)
);

/*==============================================================*/
/* Table: personalRubros                                        */
/*==============================================================*/
create table personalRubros
(
   idPersona            int not null,
   idTipoPersonalRubro  int not null,
   especialidadPersonalRubro varchar(40),
   primary key (idPersona)
);

/*==============================================================*/
/* Table: personas                                              */
/*==============================================================*/
create table personas
(
   idPersona            int not null auto_increment,
   domicilioPersona     varchar(40),
   nombresPersona       varchar(40),
   apellidosPersona     varchar(40),
   fechaNacimientoPersona date,
   rutPersona           varchar(10),
   primary key (idPersona)
);

/*==============================================================*/
/* Table: reservaTipos                                          */
/*==============================================================*/
create table reservaTipos
(
   idTipoReserva        int not null auto_increment,
   tipoReserva          varchar(20) not null,
   primary key (idTipoReserva)
);

/*==============================================================*/
/* Table: reservas                                              */
/*==============================================================*/
create table reservas
(
   idReserva            int not null auto_increment,
   idTipoReserva        int not null,
   idPersona            int,
   idAsignacion         int,
   id                   int not null default 0,
   idSala               int,
   idArea               int,
   idCama               int,
   perIdPersona         int,
   pacIdPersona         int,
   iniFechaReserva      date not null,
   iniHoraReserva       time not null,
   finFechaReserva      date,
   finHoraReserva       time,
   primary key (idReserva)
);

/*==============================================================*/
/* Table: salas                                                 */
/*==============================================================*/
create table salas
(
   idSala               int not null auto_increment,
   idArea               int,
   codVisibleSala       varchar(5),
   tipoSala             varchar(20),
   estadoSalas          varchar(10) not null,
   primary key (idSala)
);

/*==============================================================*/
/* Table: usuarios                                              */
/*==============================================================*/
create table usuarios
(
   id                   int not null auto_increment,
   idPersona                   int,
   nombreUsuario               varchar(20),
   encrypted_password          varchar(255),
   estadoUsuario               smallint not null default 1,
   nivelAutorizacion           smallint not null default 0,
   email                       varchar(255) not null,
   codAccion                   varchar(10),   
   reset_password_token        varchar(255),
   reset_password_sent_at      datetime,
   remember_created_at         datetime,
   sign_in_count               int not null default 0,
   current_sign_in_at          datetime,
   last_sign_in_at             datetime,
   current_sign_in_ip          varchar(255),
   last_sign_in_ip             varchar(255),
   primary key (id)
);

alter table asignaciones add constraint FK_asignacionArea foreign key (idArea)
      references areas (idArea) on delete restrict on update restrict;

alter table asignaciones add constraint FK_pacEsAsignado foreign key (perIdPersona, pacIdPersona)
      references pacientes (perIdPersona, idPersona) on delete restrict on update restrict;

alter table asignaciones add constraint FK_personalEsAsignado foreign key (perIdPersona)
      references personalRubros (idPersona) on delete restrict on update restrict;

alter table asignaciones add constraint FK_seAsignaCama foreign key (idCama)
      references camas (idCama) on delete restrict on update restrict;

alter table asignaciones add constraint FK_seAsignaSala foreign key (idSala)
      references salas (idSala) on delete restrict on update restrict;

alter table asignaciones add constraint FK_tipoAsignClasificaAsign foreign key (idTipoAsignacion)
      references asignacionTipos (idTipoAsignacion) on delete restrict on update restrict;

alter table asignaciones add constraint FK_usuarioAsignaciones foreign key (id)
      references usuarios (id) on delete restrict on update restrict;

alter table camas add constraint FK_areaPoseeCamas foreign key (idArea)
      references areas (idArea) on delete restrict on update restrict;

alter table camas add constraint FK_habPoseeCamas foreign key (idHabitacion)
      references habitacions (idHabitacion) on delete restrict on update restrict;

alter table camas add constraint FK_salaPoseeCamas foreign key (idSala)
      references salas (idSala) on delete restrict on update restrict;

alter table desocupamientoRecintos add constraint FK_asignPoseeDeocupa foreign key (idAsignacion)
      references asignaciones (idAsignacion) on delete restrict on update restrict;

alter table habitacions add constraint FK_salaContieneHabitaciones foreign key (idSala)
      references salas (idSala) on delete restrict on update restrict;

alter table historialUsuarios add constraint FK_usuarioRegistraHistorial foreign key (id)
      references usuarios (id) on delete restrict on update restrict;

alter table observaciones add constraint FK_pacPoseeObs foreign key (perIdPersona, idPersona)
      references pacientes (perIdPersona, idPersona) on delete restrict on update restrict;

alter table observaciones add constraint FK_perRubRealizaObservaciones foreign key (idObservacion)
      references personalRubros (idPersona) on delete restrict on update restrict;

alter table pacientes add constraint FK_deudorEsPersona foreign key (idPersona)
      references personas (idPersona) on delete restrict on update restrict;

alter table pacientes add constraint FK_pacEsPersona foreign key (perIdPersona)
      references personas (idPersona) on delete restrict on update restrict;

alter table pacientes add constraint FK_pacPresentaEstPac foreign key (idEstadoPaciente)
      references pacienteEstados (idEstadoPaciente) on delete restrict on update restrict;

alter table pacientes add constraint FK_pacTipoClasificaPaciente foreign key (idTipoPaciente)
      references pacienteTipos (idTipoPaciente) on delete restrict on update restrict;

alter table personalRubros add constraint FK_perRubEsPersona foreign key (idPersona)
      references personas (idPersona) on delete restrict on update restrict;

alter table personalRubros add constraint FK_perRubTipClasificaPerRub foreign key (idTipoPersonalRubro)
      references personalRubroTipos (idTipoPersonalRubro) on delete restrict on update restrict;

alter table reservas add constraint FK_reservaCorrespondeArea foreign key (idArea)
      references areas (idArea) on delete restrict on update restrict;

alter table reservas add constraint FK_reservaParaPaciente foreign key (perIdPersona, pacIdPersona)
      references pacientes (perIdPersona, idPersona) on delete restrict on update restrict;

alter table reservas add constraint FK_reservaParaPersonal foreign key (idPersona)
      references personalRubros (idPersona) on delete restrict on update restrict;

alter table reservas add constraint FK_reservaRegistraAsignacion foreign key (idAsignacion)
      references asignaciones (idAsignacion) on delete restrict on update restrict;

alter table reservas add constraint FK_reservacionCama foreign key (idCama)
      references camas (idCama) on delete restrict on update restrict;

alter table reservas add constraint FK_reservacionSala foreign key (idSala)
      references salas (idSala) on delete restrict on update restrict;

alter table reservas add constraint FK_tipoReservaClasificaReserva foreign key (idTipoReserva)
      references reservaTipos (idTipoReserva) on delete restrict on update restrict;

alter table reservas add constraint FK_usuarioReserva foreign key (id)
      references usuarios (id) on delete restrict on update restrict;

alter table salas add constraint FK_areaPoseeSalas foreign key (idArea)
      references areas (idArea) on delete restrict on update restrict;

alter table usuarios add constraint FK_perRubroEsUsuario foreign key (idPersona)
      references personalRubros (idPersona) on delete restrict on update restrict;

/* Correcciones Complejas*/
RENAME TABLE pacienteTipos TO paciente_tipos;
RENAME TABLE pacienteEstados TO paciente_estados;
RENAME TABLE asignacionTipos TO asignacion_tipos;
RENAME TABLE desocupamientoRecintos TO desocupamiento_recintos;
RENAME TABLE historialUsuarios TO historial_usuarios;
RENAME TABLE personalRubroTipos TO personal_rubro_tipos;
RENAME TABLE personalRubros TO personal_rubros;
RENAME TABLE reservaTipos TO reserva_tipos;

