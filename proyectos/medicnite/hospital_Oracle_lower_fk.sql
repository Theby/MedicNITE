/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     16-12-13 16:13:59                            */
/*==============================================================*/


drop table if exists AreaPoseeAtrarea;

drop table if exists Areas;

drop table if exists AsignacionPersonaRecintoAreas;

drop table if exists AtributoAreas;

drop table if exists AtributoPersonas;

drop table if exists AtributoRecintos;

drop table if exists EstadoPersonas;

drop table if exists EstadoRecintos;

drop table if exists HistorialOcupamientoRecintos;

drop table if exists HistorialPersonas;

drop table if exists HistorialRecintos;

drop table if exists Notificaciones;

drop table if exists Personas;

drop table if exists Recintos;

drop table if exists ReservaRecintos;

drop table if exists TipoAtributoAreas;

drop table if exists TipoAtributoPersonas;

drop table if exists TipoAtributoRecintos;

drop table if exists TipoEstadoPersonas;

drop table if exists TipoEstadoRecintos;

drop table if exists TipoOperacionPersonas;

drop table if exists TipoOperacionRecintos;

drop table if exists TipoPersonas;

drop table if exists TipoRecintos;

drop table if exists TipoperClasificaPer;

drop table if exists TipoperPresentaTipoestper;

drop table if exists UsuarioRecibeNotificacion;

drop table if exists Usuarios;

/*==============================================================*/
/* Table: AreaPoseeAtrarea                                      */
/*==============================================================*/
create table AreaPoseeAtrarea
(
   idTipoAtributoArea   int not null,
   idAtributosArea      int not null,
   idArea               int not null,
   primary key (idTipoAtributoArea, idAtributosArea, idArea)
);

/*==============================================================*/
/* Table: Areas                                                 */
/*==============================================================*/
create table Areas
(
   idArea               int not null,
   areIdArea            int,
   nombreArea           varchar(20),
   primary key (idArea)
);

/*==============================================================*/
/* Table: AsignacionPersonaRecintoAreas                         */
/*==============================================================*/
create table AsignacionPersonaRecintoAreas
(
   idPersona            int not null,
   idTipoRecinto        int not null,
   idRecinto            int not null,
   idArea               int not null,
   idUsuario            int not null,
   idHistorialOcupamientoRecinto int not null,
   idAsignacionPersonaRecintoArea int not null,
   fechaIniAsignacionPersonaRecintoArea date,
   horaIniAsignacionPersonaRecintoArea time,
   fechaFinAsignacionPersonaRecintoArea date,
   horaFinAsignacionPersonaRecintoArea time,
   primary key (idTipoRecinto, idPersona, idRecinto, idArea, idUsuario, idHistorialOcupamientoRecinto)
);

/*==============================================================*/
/* Table: AtributoAreas                                         */
/*==============================================================*/
create table AtributoAreas
(
   idTipoAtributoArea   int not null,
   idAtributosArea      int not null,
   valorAtributoArea    varchar(20),
   primary key (idTipoAtributoArea, idAtributosArea)
);

/*==============================================================*/
/* Table: AtributoPersonas                                      */
/*==============================================================*/
create table AtributoPersonas
(
   idTipoAtributoPersona int not null,
   idAtributoPersona    int not null,
   idPersona            int not null,
   valorAtributoPersona varchar(20),
   primary key (idTipoAtributoPersona, idAtributoPersona)
);

/*==============================================================*/
/* Table: AtributoRecintos                                      */
/*==============================================================*/
create table AtributoRecintos
(
   idTipoAtributosRecinto int not null,
   idAtributoRecinto    int not null,
   idTipoRecinto        int not null,
   idRecinto            int not null,
   valorAtributoRecinto varchar(20),
   primary key (idTipoAtributosRecinto, idAtributoRecinto)
);

/*==============================================================*/
/* Table: EstadoPersonas                                        */
/*==============================================================*/
create table EstadoPersonas
(
   idEstadoPersona      int not null,
   idTipoEstadoPersona  int not null,
   idPersona            int not null,
   valorEstadoPersona   varchar(20),
   primary key (idEstadoPersona)
);

/*==============================================================*/
/* Table: EstadoRecintos                                        */
/*==============================================================*/
create table EstadoRecintos
(
   idEstadoRecinto      int not null,
   idTipoRecinto        int,
   idRecinto            int,
   idTipoEstadoRecinto  int not null,
   valorEstadoRecinto   varchar(20),
   primary key (idEstadoRecinto)
);

/*==============================================================*/
/* Table: HistorialOcupamientoRecintos                          */
/*==============================================================*/
create table HistorialOcupamientoRecintos
(
   idHistorialOcupamientoRecinto int not null,
   idTipoRecinto        int not null,
   idRecinto            int not null,
   tipoOcupamiento      varchar(20) not null,
   fechaInicialOcupamientoRecinto date not null,
   horaInicialOcupamientoRecinto time not null,
   fechaFinalOcupamientoRecinto date not null,
   horaFinalOcupamientoRecinto time not null,
   primary key (idHistorialOcupamientoRecinto)
);

/*==============================================================*/
/* Table: HistorialPersonas                                     */
/*==============================================================*/
create table HistorialPersonas
(
   idEstadoPersona      int not null,
   idTipoOperacionPersona int not null,
   idPersona            int not null,
   idUsuario            int not null,
   idTipoRecinto        int not null,
   idRecinto            int not null,
   idHistorialPersona   int not null,
   fechaHistorialPersona date,
   horaHistorialPersona time,
   primary key (idTipoRecinto, idEstadoPersona, idTipoOperacionPersona, idPersona, idUsuario, idRecinto)
);

/*==============================================================*/
/* Table: HistorialRecintos                                     */
/*==============================================================*/
create table HistorialRecintos
(
   idTipoOperacionRecinto int not null,
   idEstadoRecinto      int not null,
   idTipoRecinto        int not null,
   idRecinto            int not null,
   idUsuario            int not null,
   idPersona            int not null,
   idHistorialRecinto   int not null,
   fechaHistorialRecinto date,
   horaHistorialRecinto time,
   primary key (idTipoRecinto, idTipoOperacionRecinto, idEstadoRecinto, idRecinto, idUsuario, idPersona)
);

/*==============================================================*/
/* Table: Notificaciones                                        */
/*==============================================================*/
create table Notificaciones
(
   idNotificacion       int not null,
   mensajeNotificacion  varchar(40),
   primary key (idNotificacion)
);

/*==============================================================*/
/* Table: Personas                                              */
/*==============================================================*/
create table Personas
(
   idPersona            int not null,
   rutPersona           varchar(10),
   nombresPersona       varchar(30),
   apellidopatermoPersona varchar(20),
   apellidomaternoPersona varchar(20),
   primary key (idPersona)
);

/*==============================================================*/
/* Table: Recintos                                              */
/*==============================================================*/
create table Recintos
(
   idTipoRecinto        int not null,
   idRecinto            int not null,
   idArea               int,
   recIdTipoRecinto     int,
   recIdRecinto         int,
   nombreRecinto        varchar(20),
   codigoVisual         varchar(20),
   primary key (idTipoRecinto, idRecinto)
);

/*==============================================================*/
/* Table: ReservaRecintos                                       */
/*==============================================================*/
create table ReservaRecintos
(
   idReservaRecinto     int not null,
   idUsuario            int not null,
   idHistorialOcupamientoRecinto int,
   idPersona            int,
   idTipoRecinto        int not null,
   idRecinto            int not null,
   fechaInicialOcupamientoRecinto date not null,
   horaInicialOcupamientoRecinto time not null,
   fechaFinalOcupamientoRecinto date,
   horaFinalOcupamientoRecinto time,
   primary key (idReservaRecinto)
);

/*==============================================================*/
/* Table: TipoAtributoAreas                                     */
/*==============================================================*/
create table TipoAtributoAreas
(
   idTipoAtributoArea   int not null,
   idArea               int not null,
   tipoAtributoArea     varchar(20),
   primary key (idTipoAtributoArea)
);

/*==============================================================*/
/* Table: TipoAtributoPersonas                                  */
/*==============================================================*/
create table TipoAtributoPersonas
(
   idTipoAtributoPersona int not null,
   idTipoPersona        int not null,
   tipoAtributoPersona  varchar(20),
   tipoDominioAtributoPersona char(10),
   primary key (idTipoAtributoPersona)
);

/*==============================================================*/
/* Table: TipoAtributoRecintos                                  */
/*==============================================================*/
create table TipoAtributoRecintos
(
   idTipoAtributosRecinto int not null,
   idTipoRecinto        int not null,
   tipoAtributoRecinto  varchar(20),
   dominioRecinto       varchar(20),
   primary key (idTipoAtributosRecinto)
);

/*==============================================================*/
/* Table: TipoEstadoPersonas                                    */
/*==============================================================*/
create table TipoEstadoPersonas
(
   idTipoEstadoPersona  int not null,
   tipoEstadoPersona    varchar(20),
   primary key (idTipoEstadoPersona)
);

/*==============================================================*/
/* Table: TipoEstadoRecintos                                    */
/*==============================================================*/
create table TipoEstadoRecintos
(
   idTipoEstadoRecinto  int not null,
   idTipoRecinto        int not null,
   tipoEstadoRecinto    varchar(20),
   primary key (idTipoEstadoRecinto)
);

/*==============================================================*/
/* Table: TipoOperacionPersonas                                 */
/*==============================================================*/
create table TipoOperacionPersonas
(
   idTipoOperacionPersona int not null,
   idTipoPersona        int not null,
   nombreTipoOperacionPersona varchar(20),
   primary key (idTipoOperacionPersona)
);

/*==============================================================*/
/* Table: TipoOperacionRecintos                                 */
/*==============================================================*/
create table TipoOperacionRecintos
(
   idTipoOperacionRecinto int not null,
   idTipoRecinto        int not null,
   nombreTipoOperacionRecinto varchar(20),
   primary key (idTipoOperacionRecinto)
);

/*==============================================================*/
/* Table: TipoPersonas                                          */
/*==============================================================*/
create table TipoPersonas
(
   idTipoPersona        int not null,
   nombreTipoPersona    varchar(20),
   primary key (idTipoPersona)
);

/*==============================================================*/
/* Table: TipoRecintos                                          */
/*==============================================================*/
create table TipoRecintos
(
   idTipoRecinto        int not null,
   nombreTipoRecinto    varchar(20),
   primary key (idTipoRecinto)
);

/*==============================================================*/
/* Table: TipoperClasificaPer                                   */
/*==============================================================*/
create table TipoperClasificaPer
(
   idTipoPersona        int not null,
   idPersona            int not null,
   primary key (idTipoPersona, idPersona)
);

/*==============================================================*/
/* Table: TipoperPresentaTipoestper                             */
/*==============================================================*/
create table TipoperPresentaTipoestper
(
   idTipoPersona        int not null,
   idTipoEstadoPersona  int not null,
   primary key (idTipoPersona, idTipoEstadoPersona)
);

/*==============================================================*/
/* Table: UsuarioRecibeNotificacion                             */
/*==============================================================*/
create table UsuarioRecibeNotificacion
(
   idUsuario            int not null,
   idNotificacion       int not null,
   primary key (idUsuario, idNotificacion)
);

/*==============================================================*/
/* Table: Usuarios                                              */
/*==============================================================*/
create table Usuarios
(
   idUsuario            int not null,
   idPersona            int not null,
   nombreUsuario        varchar(20) not null,
   passwordUsuario      varchar(20) not null,
   emailUsuario         varchar(30) not null,
   autorizacionUsuario  int,
   codigoSeguridadUsuario varchar(20),
   estadoCuentaUsuario  int not null,
   primary key (idUsuario)
);

alter table AreaPoseeAtrarea add constraint FK_AreaAtributoArea foreign key (idTipoAtributoArea, idAtributosArea)
      references AtributoAreas (idTipoAtributoArea, idAtributosArea) on delete restrict on update restrict;

alter table AreaPoseeAtrarea add constraint FK_AreaAtributoArea2 foreign key (idArea)
      references Areas (idArea) on delete restrict on update restrict;

alter table Areas add constraint FK_AreaContieneAreas foreign key (areIdArea)
      references Areas (idArea) on delete restrict on update restrict;

alter table AsignacionPersonaRecintoAreas add constraint FK_AsignacionPersonaRecintoAreas foreign key (idPersona)
      references Personas (idPersona) on delete restrict on update restrict;

alter table AsignacionPersonaRecintoAreas add constraint FK_AsignacionPersonaRecintoAreas2 foreign key (idTipoRecinto, idRecinto)
      references Recintos (idTipoRecinto, idRecinto) on delete restrict on update restrict;

alter table AsignacionPersonaRecintoAreas add constraint FK_AsignacionPersonaRecintoAreas3 foreign key (idArea)
      references Areas (idArea) on delete restrict on update restrict;

alter table AsignacionPersonaRecintoAreas add constraint FK_AsignacionPersonaRecintoAreas4 foreign key (idUsuario)
      references Usuarios (idUsuario) on delete restrict on update restrict;

alter table AsignacionPersonaRecintoAreas add constraint FK_AsignacionPersonaRecintoAreas5 foreign key (idHistorialOcupamientoRecinto)
      references HistorialOcupamientoRecintos (idHistorialOcupamientoRecinto) on delete restrict on update restrict;

alter table AtributoAreas add constraint FK_TipoatrareaClasificaAtrarea foreign key (idTipoAtributoArea)
      references TipoAtributoAreas (idTipoAtributoArea) on delete restrict on update restrict;

alter table AtributoPersonas add constraint FK_PersonaAtributoPersona foreign key (idPersona)
      references Personas (idPersona) on delete restrict on update restrict;

alter table AtributoPersonas add constraint FK_TipoatrperClasificaAtrper foreign key (idTipoAtributoPersona)
      references TipoAtributoPersonas (idTipoAtributoPersona) on delete restrict on update restrict;

alter table AtributoRecintos add constraint FK_RecPoseeAtrrec foreign key (idTipoRecinto, idRecinto)
      references Recintos (idTipoRecinto, idRecinto) on delete restrict on update restrict;

alter table AtributoRecintos add constraint FK_TipoatrrecPeseeAtrrec foreign key (idTipoAtributosRecinto)
      references TipoAtributoRecintos (idTipoAtributosRecinto) on delete restrict on update restrict;

alter table EstadoPersonas add constraint FK_PerPresentaEstper foreign key (idPersona)
      references Personas (idPersona) on delete restrict on update restrict;

alter table EstadoPersonas add constraint FK_TipoestperClasificaEstper foreign key (idTipoEstadoPersona)
      references TipoEstadoPersonas (idTipoEstadoPersona) on delete restrict on update restrict;

alter table EstadoRecintos add constraint FK_RecPresentaEstrec /*rECPRESENTAESTREC*/ foreign key (idTipoRecinto, idRecinto)
      references Recintos (idTipoRecinto, idRecinto) on delete restrict on update restrict;

alter table EstadoRecintos add constraint FK_tIPOESTRECPOSEEESTREC foreign key (idTipoEstadoRecinto)
      references TipoEstadoRecintos (idTipoEstadoRecinto) on delete restrict on update restrict;

alter table HistorialOcupamientoRecintos add constraint FK_rECPRESENTAHISOCUREC foreign key (idTipoRecinto, idRecinto)
      references Recintos (idTipoRecinto, idRecinto) on delete restrict on update restrict;

alter table HistorialPersonas add constraint FK_hISTORIALPERSONAS foreign key (idEstadoPersona)
      references EstadoPersonas (idEstadoPersona) on delete restrict on update restrict;

alter table HistorialPersonas add constraint FK_hISTORIALPERSONAS2 foreign key (idTipoOperacionPersona)
      references TipoOperacionPersonas (idTipoOperacionPersona) on delete restrict on update restrict;

alter table HistorialPersonas add constraint FK_hISTORIALPERSONAS3 foreign key (idPersona)
      references Personas (idPersona) on delete restrict on update restrict;

alter table HistorialPersonas add constraint FK_hISTORIALPERSONAS4 foreign key (idUsuario)
      references Usuarios (idUsuario) on delete restrict on update restrict;

alter table HistorialPersonas add constraint FK_hISTORIALPERSONAS5 foreign key (idTipoRecinto, idRecinto)
      references Recintos (idTipoRecinto, idRecinto) on delete restrict on update restrict;

alter table HistorialRecintos add constraint FK_hISTORIALRECINTOS foreign key (idTipoOperacionRecinto)
      references TipoOperacionRecintos (idTipoOperacionRecinto) on delete restrict on update restrict;

alter table HistorialRecintos add constraint FK_hISTORIALRECINTOS2 foreign key (idEstadoRecinto)
      references EstadoRecintos (idEstadoRecinto) on delete restrict on update restrict;

alter table HistorialRecintos add constraint FK_hISTORIALRECINTOS3 foreign key (idTipoRecinto, idRecinto)
      references Recintos (idTipoRecinto, idRecinto) on delete restrict on update restrict;

alter table HistorialRecintos add constraint FK_hISTORIALRECINTOS4 foreign key (idUsuario)
      references Usuarios (idUsuario) on delete restrict on update restrict;

alter table HistorialRecintos add constraint FK_hISTORIALRECINTOS5 foreign key (idPersona)
      references Personas (idPersona) on delete restrict on update restrict;

alter table Recintos add constraint FK_aREACLASIFICAREC foreign key (idArea)
      references Areas (idArea) on delete restrict on update restrict;

alter table Recintos add constraint FK_rECCONTIENEREC foreign key (recIdTipoRecinto, recIdRecinto)
      references Recintos (idTipoRecinto, idRecinto) on delete restrict on update restrict;

alter table Recintos add constraint FK_tIPORECCLASIFICAREC foreign key (idTipoRecinto)
      references TipoRecintos (idTipoRecinto) on delete restrict on update restrict;

alter table ReservaRecintos add constraint FK_pERSONAPOSEERESERVARECINTO foreign key (idPersona)
      references Personas (idPersona) on delete restrict on update restrict;

alter table ReservaRecintos add constraint FK_rECINTOPRESENTARESERVARESINTO foreign key (idTipoRecinto, idRecinto)
      references Recintos (idTipoRecinto, idRecinto) on delete restrict on update restrict;

alter table ReservaRecintos add constraint FK_rESRECREGISTRAHISOCUREC foreign key (idHistorialOcupamientoRecinto)
      references HistorialOcupamientoRecintos (idHistorialOcupamientoRecinto) on delete restrict on update restrict;

alter table ReservaRecintos add constraint FK_uSUARIOREVISARESERVARECINTO foreign key (idUsuario)
      references Usuarios (idUsuario) on delete restrict on update restrict;

alter table TipoAtributoAreas add constraint FK_aREAPOSEETIPOATRAREA foreign key (idArea)
      references Areas (idArea) on delete restrict on update restrict;

alter table TipoAtributoPersonas add constraint FK_tIPOPERPOSEETIPOATRPER foreign key (idTipoPersona)
      references TipoPersonas (idTipoPersona) on delete restrict on update restrict;

alter table TipoAtributoRecintos add constraint FK_tIPORECPOSEETIPOATRREC foreign key (idTipoRecinto)
      references TipoRecintos (idTipoRecinto) on delete restrict on update restrict;

alter table TipoEstadoRecintos add constraint FK_tIPORECPOSEETIPOESTREC foreign key (idTipoRecinto)
      references TipoRecintos (idTipoRecinto) on delete restrict on update restrict;

alter table TipoOperacionPersonas add constraint FK_tIPOPERREALIZAOPEPER foreign key (idTipoPersona)
      references TipoPersonas (idTipoPersona) on delete restrict on update restrict;

alter table TipoOperacionRecintos add constraint FK_tIPORECREALIZAOPEREC foreign key (idTipoRecinto)
      references TipoRecintos (idTipoRecinto) on delete restrict on update restrict;

alter table TipoperClasificaPer add constraint FK_pERSONATIPOPERSONA foreign key (idTipoPersona)
      references TipoPersonas (idTipoPersona) on delete restrict on update restrict;

alter table TipoperClasificaPer add constraint FK_pERSONATIPOPERSONA2 foreign key (idPersona)
      references Personas (idPersona) on delete restrict on update restrict;

alter table TipoperPresentaTipoestper add constraint FK_tIPOPERPRESENTATIPOESTPER foreign key (idTipoPersona)
      references TipoPersonas (idTipoPersona) on delete restrict on update restrict;

alter table TipoperPresentaTipoestper add constraint FK_tIPOPERPRESENTATIPOESTPER2 foreign key (idTipoEstadoPersona)
      references TipoEstadoPersonas (idTipoEstadoPersona) on delete restrict on update restrict;

alter table UsuarioRecibeNotificacion add constraint FK_uSUARIONOTIFICACION foreign key (idUsuario)
      references Usuarios (idUsuario) on delete restrict on update restrict;

alter table UsuarioRecibeNotificacion add constraint FK_uSUARIONOTIFICACION2 foreign key (idNotificacion)
      references Notificaciones (idNotificacion) on delete restrict on update restrict;

alter table Usuarios add constraint FK_pERSONAUSUARIO foreign key (idPersona)
      references Personas (idPersona) on delete restrict on update restrict;

