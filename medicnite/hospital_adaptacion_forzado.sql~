
/*==============================================================*/
/* Table: AREA                                                  */
/*==============================================================*/
create table AREA
(
   ID_AREA              int not null,
   ARE_ID_AREA          int,
   NOMBRE_AREA          varchar(20),
   primary key (ID_AREA)
);

/*==============================================================*/
/* Table: AREA_ATRIBUTO_AREA                                    */
/*==============================================================*/
create table AREA_ATRIBUTO_AREA
(
   ID_TIPO_ATRIBUTO_AREA int not null,
   ID_ATRIBUTOS_AREA    int not null,
   ID_AREA              int not null,
   primary key (ID_TIPO_ATRIBUTO_AREA, ID_ATRIBUTOS_AREA, ID_AREA)
);

/*==============================================================*/
/* Table: ASIGNACION_PERSONA_RECINTO_AREA                       */
/*==============================================================*/
create table ASIGNACION_PERSONA_RECINTO_AREA
(
   ID_PERSONA           int not null,
   ID_TIPO_RECINTO      int not null,
   ID_RECINTO           int not null,
   ID_AREA              int not null,
   id		        int not null,
   ID_HISTORIAL_OCUPAMIENTO_RECINTO int not null,
   ID_ASIGNACION_PERSONA_RECINTO_AREA int not null,
   FECHA_INI_ASIGNACION_PERSONA_RECINTO_AREA date,
   HORA_INI_ASIGNACION_PERSONA_RECINTO_AREA time,
   FECHA_FIN_ASIGNACION_PERSONA_RECINTO_AREA date,
   HORA_FIN_ASIGNACION_PERSONA_RECINTO_AREA time,
   primary key (ID_TIPO_RECINTO, ID_PERSONA, ID_RECINTO, ID_AREA, id, ID_HISTORIAL_OCUPAMIENTO_RECINTO)
);

/*==============================================================*/
/* Table: ATRIBUTO_AREA                                         */
/*==============================================================*/
create table ATRIBUTO_AREA
(
   ID_TIPO_ATRIBUTO_AREA int not null,
   ID_ATRIBUTOS_AREA    int not null,
   VALOR_ATRIBUTO_AREA  varchar(20),
   primary key (ID_TIPO_ATRIBUTO_AREA, ID_ATRIBUTOS_AREA)
);
 
/*==============================================================*/
/* Table: ATRIBUTO_PERSONA                                      */
/*==============================================================*/
create table ATRIBUTO_PERSONA
(
   ID_TIPO_ATRIBUTO_PERSONA int not null,
   ID_ATRIBUTO_PERSONA  int not null,
   ID_PERSONA           int not null,
   VALOR_ATRIBUTO_PERSONA varchar(20),
   primary key (ID_TIPO_ATRIBUTO_PERSONA, ID_ATRIBUTO_PERSONA)
);
 
/*==============================================================*/
/* Table: ATRIBUTO_RECINTO                                      */
/*==============================================================*/
create table ATRIBUTO_RECINTO
(
   ID_TIPO_ATRIBUTOS_RECINTO int not null,
   ID_ATRIBUTO_RECINTO  int not null,
   ID_TIPO_RECINTO      int not null,
   ID_RECINTO           int not null,
   VALOR_ATRIBUTO_RECINTO varchar(20),
   primary key (ID_TIPO_ATRIBUTOS_RECINTO, ID_ATRIBUTO_RECINTO)
);
 
/*==============================================================*/
/* Table: ESTADO_PERSONA                                        */
/*==============================================================*/
create table ESTADO_PERSONA
(
   ID_ESTADO_PERSONA    int not null,
   ID_TIPO_ESTADO_PERSONA int not null,
   ID_PERSONA           int not null,
   VALOR_ESTADO_PERSONA varchar(20),
   primary key (ID_ESTADO_PERSONA)
);
 
/*==============================================================*/
/* Table: ESTADO_RECINTO                                        */
/*==============================================================*/
create table ESTADO_RECINTO
(
   ID_ESTADO_RECINTO    int not null,
   ID_TIPO_RECINTO      int,
   ID_RECINTO           int,
   ID_TIPO_ESTADO_RECINTO int not null,
   VALOR_ESTADO_RECINTO varchar(20),
   primary key (ID_ESTADO_RECINTO)
); 

/*==============================================================*/
/* Table: HISTORIAL_OCUPAMIENTO_RECINTO                         */
/*==============================================================*/
create table HISTORIAL_OCUPAMIENTO_RECINTO
(
   ID_HISTORIAL_OCUPAMIENTO_RECINTO int not null,
   ID_TIPO_RECINTO      int not null,
   ID_RECINTO           int not null,
   TIPO_OCUPAMIENTO     varchar(20) not null,
   FECHA_INICIAL_OCUPAMIENTO_RECINTO date not null,
   HORA_INICIAL_OCUPAMIENTO_RECINTO time not null,
   FECHA_FINAL_OCUPAMIENTO_RECINTO date not null,
   HORA_FINAL_OCUPAMIENTO_RECINTO time not null,
   primary key (ID_HISTORIAL_OCUPAMIENTO_RECINTO)
);

/*==============================================================*/
/* Table: HISTORIAL_PERSONA                                     */
/*==============================================================*/
create table HISTORIAL_PERSONA
(
   ID_ESTADO_PERSONA    int not null,
   ID_TIPO_OPERACION_PERSONA int not null,
   ID_PERSONA           int not null,
   id		        int not null,
   ID_TIPO_RECINTO      int not null,
   ID_RECINTO           int not null,
   ID_HISTORIAL_PERSONA int not null,
   FECHA_HISTORIAL_PERSONA date,
   HORA_HISTORIAL_PERSONA time,
   primary key (ID_TIPO_RECINTO, ID_ESTADO_PERSONA, ID_TIPO_OPERACION_PERSONA, ID_PERSONA, id, ID_RECINTO)
);
 
/*==============================================================*/
/* Table: HISTORIAL_RECINTO                                     */
/*==============================================================*/
create table HISTORIAL_RECINTO
(
   ID_TIPO_OPERACION_RECINTO int not null,
   ID_ESTADO_RECINTO    int not null,
   ID_TIPO_RECINTO      int not null,
   ID_RECINTO           int not null,
   id		        int not null,
   ID_PERSONA           int not null,
   ID_HISTORIAL_RECINTO int not null,
   FECHA_HISTORIAL_RECINTO date,
   HORA_HISTORIAL_RECINTO time,
   primary key (ID_TIPO_RECINTO, ID_TIPO_OPERACION_RECINTO, ID_ESTADO_RECINTO, ID_RECINTO, id, ID_PERSONA)
);
 
/*==============================================================*/
/* Table: NOTIFICACION                                          */
/*==============================================================*/
create table NOTIFICACION
(
   ID_NOTIFICACION      int not null,
   MENSAJE_NOTIFICACION varchar(40),
   primary key (ID_NOTIFICACION)
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA
(
   ID_PERSONA           int not null,
   RUT_PERSONA          varchar(10),
   NOMBRES_PERSONA      varchar(30),
   APELLIDOPATERMO_PERSONA varchar(20),
   APELLIDOMATERNO_PERSONA varchar(20),
   primary key (ID_PERSONA)
);
 
/*==============================================================*/
/* Table: PERSONA_TIPO_PERSONA                                  */
/*==============================================================*/
create table PERSONA_TIPO_PERSONA
(
   ID_TIPO_PERSONA      int not null,
   ID_PERSONA           int not null,
   primary key (ID_TIPO_PERSONA, ID_PERSONA)
);
 
/*==============================================================*/
/* Table: RECINTO                                               */
/*==============================================================*/
create table RECINTO
(
   ID_TIPO_RECINTO      int not null,
   ID_RECINTO           int not null,
   ID_AREA              int,
   REC_ID_TIPO_RECINTO  int,
   REC_ID_RECINTO       int,
   NOMBRE_RECINTO       varchar(20),
   CODIGO_VISUAL        varchar(20),
   primary key (ID_TIPO_RECINTO, ID_RECINTO)
);
 
/*==============================================================*/
/* Table: RESERVA_RECINTO                                       */
/*==============================================================*/
create table RESERVA_RECINTO
(
   ID_RESERVA_RECINTO   int not null,
   id		        int not null,
   ID_HISTORIAL_OCUPAMIENTO_RECINTO int,
   ID_PERSONA           int,
   ID_TIPO_RECINTO      int not null,
   ID_RECINTO           int not null,
   FECHA_INICIAL_OCUPAMIENTO_RECINTO date not null,
   HORA_INICIAL_OCUPAMIENTO_RECINTO time not null,
   FECHA_FINAL_OCUPAMIENTO_RECINTO date,
   HORA_FINAL_OCUPAMIENTO_RECINTO time,
   primary key (ID_RESERVA_RECINTO)
);

/*==============================================================*/
/* Table: TIPOPER_PRESENTA_TIPOESTPER                           */
/*==============================================================*/
create table TIPOPER_PRESENTA_TIPOESTPER
(
   ID_TIPO_PERSONA      int not null,
   ID_TIPO_ESTADO_PERSONA int not null,
   primary key (ID_TIPO_PERSONA, ID_TIPO_ESTADO_PERSONA)
);

/*==============================================================*/
/* Table: TIPO_ATRIBUTO_AREA                                    */
/*==============================================================*/
create table TIPO_ATRIBUTO_AREA
(
   ID_TIPO_ATRIBUTO_AREA int not null,
   ID_AREA              int not null,
   TIPO_ATRIBUTO_AREA   varchar(20),
   primary key (ID_TIPO_ATRIBUTO_AREA)
);
 
/*==============================================================*/
/* Table: TIPO_ATRIBUTO_PERSONA                                 */
/*==============================================================*/
create table TIPO_ATRIBUTO_PERSONA
(
   ID_TIPO_ATRIBUTO_PERSONA int not null,
   ID_TIPO_PERSONA      int not null,
   TIPO_ATRIBUTO_PERSONA varchar(20),
   TIPO_DOMINIO_ATRIBUTO_PERSONA char(10),
   primary key (ID_TIPO_ATRIBUTO_PERSONA)
);

/*==============================================================*/
/* Table: TIPO_ATRIBUTO_RECINTO                                 */
/*==============================================================*/
create table TIPO_ATRIBUTO_RECINTO
(
   ID_TIPO_ATRIBUTOS_RECINTO int not null,
   ID_TIPO_RECINTO      int not null,
   TIPO_ATRIBUTO_RECINTO varchar(20),
   DOMINIO_RECINTO      varchar(20),
   primary key (ID_TIPO_ATRIBUTOS_RECINTO)
);
 
/*==============================================================*/
/* Table: TIPO_ESTADO_PERSONA                                   */
/*==============================================================*/
create table TIPO_ESTADO_PERSONA
(
   ID_TIPO_ESTADO_PERSONA int not null,
   TIPO_ESTADO_PERSONA  varchar(20),
   primary key (ID_TIPO_ESTADO_PERSONA)
);
 
/*==============================================================*/
/* Table: TIPO_ESTADO_RECINTO                                   */
/*==============================================================*/
create table TIPO_ESTADO_RECINTO
(
   ID_TIPO_ESTADO_RECINTO int not null,
   ID_TIPO_RECINTO      int not null,
   TIPO_ESTADO_RECINTO  varchar(20),
   primary key (ID_TIPO_ESTADO_RECINTO)
);
 
/*==============================================================*/
/* Table: TIPO_OPERACION_PERSONA                                */
/*==============================================================*/
create table TIPO_OPERACION_PERSONA
(
   ID_TIPO_OPERACION_PERSONA int not null,
   ID_TIPO_PERSONA      int not null,
   NOMBRE_TIPO_OPERACION_PERSONA varchar(20),
   primary key (ID_TIPO_OPERACION_PERSONA)
);
 
/*==============================================================*/
/* Table: TIPO_OPERACION_RECINTO                                */
/*==============================================================*/
create table TIPO_OPERACION_RECINTO
(
   ID_TIPO_OPERACION_RECINTO int not null,
   ID_TIPO_RECINTO      int not null,
   NOMBRE_TIPO_OPERACION_RECINTO varchar(20),
   primary key (ID_TIPO_OPERACION_RECINTO)
);
 
/*==============================================================*/
/* Table: TIPO_PERSONA                                          */
/*==============================================================*/
create table TIPO_PERSONA
(
   ID_TIPO_PERSONA      int not null,
   NOMBRE_TIPO_PERSONA  varchar(20),
   primary key (ID_TIPO_PERSONA)
);
 
/*==============================================================*/
/* Table: TIPO_RECINTO                                          */
/*==============================================================*/
create table TIPO_RECINTO
(
   ID_TIPO_RECINTO      int not null,
   NOMBRE_TIPO_RECINTO  varchar(20),
   primary key (ID_TIPO_RECINTO)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================
create table USUARIO
(
   ID_USUARIO           int not null,
   ID_PERSONA           int not null,
   NOMBRE_USUARIO       varchar(20) not null,
   PASSWORD_USUARIO     varchar(20) not null,
   EMAIL_USUARIO        varchar(30) not null,
   AUTORIZACION_USUARIO int,
   CODIGO_SEGURIDAD_USUARIO varchar(20),
   ESTADO_CUENTA_USUARIO int not null,
   primary key (ID_USUARIO)
);
 */
/*==============================================================*/
/* Table: usuarios_NOTIFICACION                                  */
/*==============================================================*/
create table usuarios_NOTIFICACION
(
   id           int not null,
   ID_NOTIFICACION      int not null,
   primary key (id, ID_NOTIFICACION)
);

alter table AREA add constraint FK_AREA_CONTIENE_AREAS foreign key (ARE_ID_AREA)
      references AREA (ID_AREA) on delete restrict on update restrict;

alter table AREA_ATRIBUTO_AREA add constraint FK_AREA_ATRIBUTO_AREA foreign key (ID_TIPO_ATRIBUTO_AREA, ID_ATRIBUTOS_AREA)
      references ATRIBUTO_AREA (ID_TIPO_ATRIBUTO_AREA, ID_ATRIBUTOS_AREA) on delete restrict on update restrict;

alter table AREA_ATRIBUTO_AREA add constraint FK_AREA_ATRIBUTO_AREA2 foreign key (ID_AREA)
      references AREA (ID_AREA) on delete restrict on update restrict;

alter table ASIGNACION_PERSONA_RECINTO_AREA add constraint FK_ASIGNACION_PERSONA_RECINTO_AREA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;

alter table ASIGNACION_PERSONA_RECINTO_AREA add constraint FK_ASIGNACION_PERSONA_RECINTO_AREA2 foreign key (ID_TIPO_RECINTO, ID_RECINTO)
      references RECINTO (ID_TIPO_RECINTO, ID_RECINTO) on delete restrict on update restrict;

alter table ASIGNACION_PERSONA_RECINTO_AREA add constraint FK_ASIGNACION_PERSONA_RECINTO_AREA3 foreign key (ID_AREA)
      references AREA (ID_AREA) on delete restrict on update restrict;
/* Se adapta ID_USUARIO de cript generado, a id; identificador de tabla usuarios, generada por Devise de rails */
alter table ASIGNACION_PERSONA_RECINTO_AREA add constraint FK_ASIGNACION_PERSONA_RECINTO_AREA4 foreign key (id)
      references usuarios (id) on delete restrict on update restrict;

alter table ASIGNACION_PERSONA_RECINTO_AREA add constraint FK_ASIGNACION_PERSONA_RECINTO_AREA5 foreign key (ID_HISTORIAL_OCUPAMIENTO_RECINTO)
      references HISTORIAL_OCUPAMIENTO_RECINTO (ID_HISTORIAL_OCUPAMIENTO_RECINTO) on delete restrict on update restrict;

alter table ATRIBUTO_AREA add constraint FK_TIPOATRAREA_CLASIFICA_ATRAREA foreign key (ID_TIPO_ATRIBUTO_AREA)
      references TIPO_ATRIBUTO_AREA (ID_TIPO_ATRIBUTO_AREA) on delete restrict on update restrict;

alter table ATRIBUTO_PERSONA add constraint FK_PERSONA_ATRIBUTO_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;

alter table ATRIBUTO_PERSONA add constraint FK_TIPOATRPER_CLASIFICA_ATRPER foreign key (ID_TIPO_ATRIBUTO_PERSONA)
      references TIPO_ATRIBUTO_PERSONA (ID_TIPO_ATRIBUTO_PERSONA) on delete restrict on update restrict;

alter table ATRIBUTO_RECINTO add constraint FK_REC_POSEE_ATRREC foreign key (ID_TIPO_RECINTO, ID_RECINTO)
      references RECINTO (ID_TIPO_RECINTO, ID_RECINTO) on delete restrict on update restrict;

alter table ATRIBUTO_RECINTO add constraint FK_TIPOATRREC_POSEE_ATRREC foreign key (ID_TIPO_ATRIBUTOS_RECINTO)
      references TIPO_ATRIBUTO_RECINTO (ID_TIPO_ATRIBUTOS_RECINTO) on delete restrict on update restrict;

alter table ESTADO_PERSONA add constraint FK_PER_PRESENTA_ESTPER foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;

alter table ESTADO_PERSONA add constraint FK_TIPOESTPER_CLASIFICA_ESTPER foreign key (ID_TIPO_ESTADO_PERSONA)
      references TIPO_ESTADO_PERSONA (ID_TIPO_ESTADO_PERSONA) on delete restrict on update restrict;

alter table ESTADO_RECINTO add constraint FK_REC_PRESENTA_ESTREC foreign key (ID_TIPO_RECINTO, ID_RECINTO)
      references RECINTO (ID_TIPO_RECINTO, ID_RECINTO) on delete restrict on update restrict;

alter table ESTADO_RECINTO add constraint FK_TIPOESTREC_POSEE_ESTREC foreign key (ID_TIPO_ESTADO_RECINTO)
      references TIPO_ESTADO_RECINTO (ID_TIPO_ESTADO_RECINTO) on delete restrict on update restrict;

alter table HISTORIAL_OCUPAMIENTO_RECINTO add constraint FK_REC_PRESENTA_HISOCUREC foreign key (ID_TIPO_RECINTO, ID_RECINTO)
      references RECINTO (ID_TIPO_RECINTO, ID_RECINTO) on delete restrict on update restrict;

alter table HISTORIAL_PERSONA add constraint FK_HISTORIAL_PERSONA foreign key (ID_ESTADO_PERSONA)
      references ESTADO_PERSONA (ID_ESTADO_PERSONA) on delete restrict on update restrict;

alter table HISTORIAL_PERSONA add constraint FK_HISTORIAL_PERSONA2 foreign key (ID_TIPO_OPERACION_PERSONA)
      references TIPO_OPERACION_PERSONA (ID_TIPO_OPERACION_PERSONA) on delete restrict on update restrict;

alter table HISTORIAL_PERSONA add constraint FK_HISTORIAL_PERSONA3 foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;
/* Se adapta ID_USUARIO de cript generado, a id; identificador de tabla usuarios, generada por Devise de rails */
alter table HISTORIAL_PERSONA add constraint FK_HISTORIAL_PERSONA4 foreign key (id)
      references usuarios (id) on delete restrict on update restrict;

alter table HISTORIAL_PERSONA add constraint FK_HISTORIAL_PERSONA5 foreign key (ID_TIPO_RECINTO, ID_RECINTO)
      references RECINTO (ID_TIPO_RECINTO, ID_RECINTO) on delete restrict on update restrict;

alter table HISTORIAL_RECINTO add constraint FK_HISTORIAL_RECINTO foreign key (ID_TIPO_OPERACION_RECINTO)
      references TIPO_OPERACION_RECINTO (ID_TIPO_OPERACION_RECINTO) on delete restrict on update restrict;

alter table HISTORIAL_RECINTO add constraint FK_HISTORIAL_RECINTO2 foreign key (ID_ESTADO_RECINTO)
      references ESTADO_RECINTO (ID_ESTADO_RECINTO) on delete restrict on update restrict;

alter table HISTORIAL_RECINTO add constraint FK_HISTORIAL_RECINTO3 foreign key (ID_TIPO_RECINTO, ID_RECINTO)
      references RECINTO (ID_TIPO_RECINTO, ID_RECINTO) on delete restrict on update restrict;
/* Se adapta ID_USUARIO de cript generado, a id; identificador de tabla usuarios, generada por Devise de rails */
alter table HISTORIAL_RECINTO add constraint FK_HISTORIAL_RECINTO4 foreign key (id)
      references usuarios (id) on delete restrict on update restrict;

alter table HISTORIAL_RECINTO add constraint FK_HISTORIAL_RECINTO5 foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;

alter table PERSONA_TIPO_PERSONA add constraint FK_PERSONA_TIPO_PERSONA foreign key (ID_TIPO_PERSONA)
      references TIPO_PERSONA (ID_TIPO_PERSONA) on delete restrict on update restrict;

alter table PERSONA_TIPO_PERSONA add constraint FK_PERSONA_TIPO_PERSONA2 foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;

alter table RECINTO add constraint FK_AREA_CLASIFICA_REC foreign key (ID_AREA)
      references AREA (ID_AREA) on delete restrict on update restrict;

alter table RECINTO add constraint FK_REC_CONTIENE_REC foreign key (REC_ID_TIPO_RECINTO, REC_ID_RECINTO)
      references RECINTO (ID_TIPO_RECINTO, ID_RECINTO) on delete restrict on update restrict;

alter table RECINTO add constraint FK_TIPOREC_CLASIFICA_REC foreign key (ID_TIPO_RECINTO)
      references TIPO_RECINTO (ID_TIPO_RECINTO) on delete restrict on update restrict;

alter table RESERVA_RECINTO add constraint FK_PERSONA_POSEE_RESERVA_RECINTO foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;

alter table RESERVA_RECINTO add constraint FK_RECINTO_PRESENTA_RESERVA_RESINTO foreign key (ID_TIPO_RECINTO, ID_RECINTO)
      references RECINTO (ID_TIPO_RECINTO, ID_RECINTO) on delete restrict on update restrict;

alter table RESERVA_RECINTO add constraint FK_RESREC_REGISTRA_HISOCUREC foreign key (ID_HISTORIAL_OCUPAMIENTO_RECINTO)
      references HISTORIAL_OCUPAMIENTO_RECINTO (ID_HISTORIAL_OCUPAMIENTO_RECINTO) on delete restrict on update restrict;
/* Se adapta ID_USUARIO de cript generado, a id; identificador de tabla usuarios, generada por Devise de rails */
alter table RESERVA_RECINTO add constraint FK_usuarios_REVISA_RESERVA_RECINTO foreign key (id)
      references usuarios (id) on delete restrict on update restrict;

alter table TIPOPER_PRESENTA_TIPOESTPER add constraint FK_TIPOPER_PRESENTA_TIPOESTPER foreign key (ID_TIPO_PERSONA)
      references TIPO_PERSONA (ID_TIPO_PERSONA) on delete restrict on update restrict;

alter table TIPOPER_PRESENTA_TIPOESTPER add constraint FK_TIPOPER_PRESENTA_TIPOESTPER2 foreign key (ID_TIPO_ESTADO_PERSONA)
      references TIPO_ESTADO_PERSONA (ID_TIPO_ESTADO_PERSONA) on delete restrict on update restrict;

alter table TIPO_ATRIBUTO_AREA add constraint FK_AREA_POSEE_TIPOATRAREA foreign key (ID_AREA)
      references AREA (ID_AREA) on delete restrict on update restrict;

alter table TIPO_ATRIBUTO_PERSONA add constraint FK_TIPOPER_POSEE_TIPOATRPER foreign key (ID_TIPO_PERSONA)
      references TIPO_PERSONA (ID_TIPO_PERSONA) on delete restrict on update restrict;

alter table TIPO_ATRIBUTO_RECINTO add constraint FK_TIPOREC_POSEE_TIPOATRREC foreign key (ID_TIPO_RECINTO)
      references TIPO_RECINTO (ID_TIPO_RECINTO) on delete restrict on update restrict;

alter table TIPO_ESTADO_RECINTO add constraint FK_TIPOREC_POSEE_TIPOESTREC foreign key (ID_TIPO_RECINTO)
      references TIPO_RECINTO (ID_TIPO_RECINTO) on delete restrict on update restrict;

alter table TIPO_OPERACION_PERSONA add constraint FK_TIPOPER_REALIZA_OPEPER foreign key (ID_TIPO_PERSONA)
      references TIPO_PERSONA (ID_TIPO_PERSONA) on delete restrict on update restrict;

alter table TIPO_OPERACION_RECINTO add constraint FK_TIPOREC_REALIZA_OPEREC foreign key (ID_TIPO_RECINTO)
      references TIPO_RECINTO (ID_TIPO_RECINTO) on delete restrict on update restrict;
/* Se adapta ID_USUARIO de cript generado, a id; identificador de tabla usuarios, generada por Devise de rails */
alter table usuarios add constraint FK_PERSONA_usuarios foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;
/* Se adapta ID_USUARIO de cript generado, a id; identificador de tabla usuarios, generada por Devise de rails */
alter table usuarios_NOTIFICACION add constraint FK_usuarios_NOTIFICACION foreign key (id)
      references usuarios (id) on delete restrict on update restrict;
/* Se adapta ID_USUARIO de cript generado, a id; identificador de tabla usuarios, generada por Devise de rails */
alter table usuarios_NOTIFICACION add constraint FK_usuarios_NOTIFICACION2 foreign key (ID_NOTIFICACION)
      references NOTIFICACION (ID_NOTIFICACION) on delete restrict on update restrict;

