/*==============================================================*/
/* DBMS name:      PostgreSQL 7.3                               */
/* Created on:     08-jun-22 3:55:38 PM                         */
/*==============================================================*/


drop table CERTIFICADOS;

drop table CLIENTE;

drop table FACTURA;

drop table FAMILIAR;

drop table FORMAPAGO;

drop table INGRESO;

drop table PERSONAL;

drop table PLANCONTRATADO;

drop table REGISTRO;

drop table SERVICIO;

drop table TIPOCERTIFICADO;

drop table TIPOPERSONAL;

drop table TIPOPLAN;

drop table TIPOSERVICIO;

/*==============================================================*/
/* Table: CERTIFICADOS                                          */
/*==============================================================*/
create table CERTIFICADOS (
IDCERTIFICADO        INT4                 not null,
IDCLIENTE            INT4                 not null,
IDTIPOCERTIFICADO    INT4                 not null,
FECHACERTIFICADO     DATE                 null,
DESCRIPCIONCERTIFICADO VARCHAR(100)         null,
constraint PK_CERTIFICADOS primary key (IDCERTIFICADO)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
IDCLIENTE            INT4                 not null,
IDPLANCONTRATADO     INT4                 not null,
CEDULACLIENTE        VARCHAR(10)          null,
NOMBRESCLIENTE       VARCHAR(50)          null,
APELLIDOSCLIENTE     VARCHAR(50)          null,
GENEROCLIENTE        VARCHAR(10)          null,
TIPOSANGRECLIENTE    VARCHAR(5)           null,
constraint PK_CLIENTE primary key (IDCLIENTE)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
IDFACTURA            INT4                 not null,
IDFORMAPAGO          INT4                 not null,
IDCLIENTE            INT4                 not null,
IDFAMILIAR           INT4                 not null,
FECHAFACTURA         DATE                 null,
ESTADOFACTURA        BOOL                 null,
PENDIENTESFACTURA    INT4                 null,
constraint PK_FACTURA primary key (IDFACTURA)
);

/*==============================================================*/
/* Table: FAMILIAR                                              */
/*==============================================================*/
create table FAMILIAR (
IDFAMILIAR           INT4                 not null,
CEDULAFAMILIAR       VARCHAR(10)          null,
NOMBRESFAMILIAR      VARCHAR(50)          null,
APELLIDOSFAMILIAR    VARCHAR(50)          null,
DIRECCIONFAMILIAR    VARCHAR(100)         null,
TELEFONOFAMILIAR     VARCHAR(10)          null,
constraint PK_FAMILIAR primary key (IDFAMILIAR)
);

/*==============================================================*/
/* Table: FORMAPAGO                                             */
/*==============================================================*/
create table FORMAPAGO (
IDFORMAPAGO          INT4                 not null,
NOMBREFORMAPAGO      VARCHAR(20)          null,
constraint PK_FORMAPAGO primary key (IDFORMAPAGO)
);

/*==============================================================*/
/* Table: INGRESO                                               */
/*==============================================================*/
create table INGRESO (
IDINGRESO            INT4                 not null,
IDCLIENTE            INT4                 not null,
IDREGISTRO           INT4                 not null,
constraint PK_INGRESO primary key (IDINGRESO)
);

/*==============================================================*/
/* Table: PERSONAL                                              */
/*==============================================================*/
create table PERSONAL (
IDPERSONAL           INT4                 not null,
IDTIPOPERSONAL       INT4                 not null,
CEDULAPERSONAL       VARCHAR(10)          null,
NOMBRESPERSONAL      VARCHAR(50)          null,
APELLIDOSPERSONAL    VARCHAR(50)          null,
GENEROPERSONAL       VARCHAR(10)          null,
SUELDO               DECIMAL              null,
FECHACONTRATO        DATE                 null,
constraint PK_PERSONAL primary key (IDPERSONAL)
);

/*==============================================================*/
/* Table: PLANCONTRATADO                                        */
/*==============================================================*/
create table PLANCONTRATADO (
IDPLANCONTRATADO     INT4                 not null,
IDTIPOPLAN           INT4                 not null,
DESCRIPCIONPLAN      VARCHAR(100)         null,
constraint PK_PLANCONTRATADO primary key (IDPLANCONTRATADO)
);

/*==============================================================*/
/* Table: REGISTRO                                              */
/*==============================================================*/
create table REGISTRO (
IDREGISTRO           INT4                 not null,
FECHALLEGADA         DATE                 null,
DESCRIPCIONESTADOSALUD VARCHAR(100)         null,
PARIENTESPRIMERGRADOVIVOS VARCHAR(50)          null,
PARIENTESPRIMERGRADOFALLECIDOS VARCHAR(50)          null,
INFOCUERPOBOVEDA     VARCHAR(100)         null,
constraint PK_REGISTRO primary key (IDREGISTRO)
);

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
IDSERVICIO           INT4                 not null,
IDPLANCONTRATADO     INT4                 not null,
IDTIPOSERVICIO       INT4                 not null,
IDPERSONAL           INT4                 not null,
DESCRIPCIONSERVICIO  VARCHAR(100)         null,
constraint PK_SERVICIO primary key (IDSERVICIO)
);

/*==============================================================*/
/* Table: TIPOCERTIFICADO                                       */
/*==============================================================*/
create table TIPOCERTIFICADO (
IDTIPOCERTIFICADO    INT4                 not null,
NOMBRETIPOCERTIFICADO VARCHAR(50)          null,
constraint PK_TIPOCERTIFICADO primary key (IDTIPOCERTIFICADO)
);

/*==============================================================*/
/* Table: TIPOPERSONAL                                          */
/*==============================================================*/
create table TIPOPERSONAL (
IDTIPOPERSONAL       INT4                 not null,
NOMBRETIPOPERSONAL   VARCHAR(20)          null,
constraint PK_TIPOPERSONAL primary key (IDTIPOPERSONAL)
);

/*==============================================================*/
/* Table: TIPOPLAN                                              */
/*==============================================================*/
create table TIPOPLAN (
IDTIPOPLAN           INT4                 not null,
NOMBREPLAN           VARCHAR(50)          null,
constraint PK_TIPOPLAN primary key (IDTIPOPLAN)
);

/*==============================================================*/
/* Table: TIPOSERVICIO                                          */
/*==============================================================*/
create table TIPOSERVICIO (
IDTIPOSERVICIO       INT4                 not null,
NOMBRETIPOSERVICIO   VARCHAR(50)          null,
FRECUENCIASERVICIO   VARCHAR(15)          null,
COSTOSERVICIO        DECIMAL              null,
constraint PK_TIPOSERVICIO primary key (IDTIPOSERVICIO)
);

alter table CERTIFICADOS
   add constraint FK_CERTIFIC_RELATIONS_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
      on delete restrict on update restrict;

alter table CERTIFICADOS
   add constraint FK_CERTIFIC_RELATIONS_TIPOCERT foreign key (IDTIPOCERTIFICADO)
      references TIPOCERTIFICADO (IDTIPOCERTIFICADO)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_RELATIONS_PLANCONT foreign key (IDPLANCONTRATADO)
      references PLANCONTRATADO (IDPLANCONTRATADO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_FAMILIAR foreign key (IDFAMILIAR)
      references FAMILIAR (IDFAMILIAR)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_FORMAPAG foreign key (IDFORMAPAGO)
      references FORMAPAGO (IDFORMAPAGO)
      on delete restrict on update restrict;

alter table INGRESO
   add constraint FK_INGRESO_RELATIONS_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
      on delete restrict on update restrict;

alter table INGRESO
   add constraint FK_INGRESO_RELATIONS_REGISTRO foreign key (IDREGISTRO)
      references REGISTRO (IDREGISTRO)
      on delete restrict on update restrict;

alter table PERSONAL
   add constraint FK_PERSONAL_RELATIONS_TIPOPERS foreign key (IDTIPOPERSONAL)
      references TIPOPERSONAL (IDTIPOPERSONAL)
      on delete restrict on update restrict;

alter table PLANCONTRATADO
   add constraint FK_PLANCONT_RELATIONS_TIPOPLAN foreign key (IDTIPOPLAN)
      references TIPOPLAN (IDTIPOPLAN)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_RELATIONS_PLANCONT foreign key (IDPLANCONTRATADO)
      references PLANCONTRATADO (IDPLANCONTRATADO)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_RELATIONS_TIPOSERV foreign key (IDTIPOSERVICIO)
      references TIPOSERVICIO (IDTIPOSERVICIO)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_RELATIONS_PERSONAL foreign key (IDPERSONAL)
      references PERSONAL (IDPERSONAL)
      on delete restrict on update restrict;

