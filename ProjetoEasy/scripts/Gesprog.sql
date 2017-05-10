/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2014                    */
/* Created on:     09/05/2017 12:40:47                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CIDADE') and o.name = 'FK_CIDADE_ESTADO_CI_ESTADO')
alter table CIDADE
   drop constraint FK_CIDADE_ESTADO_CI_ESTADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONTAS_BANCARIAS') and o.name = 'FK_CONTAS_B_BANCO_CON_BANCO')
alter table CONTAS_BANCARIAS
   drop constraint FK_CONTAS_B_BANCO_CON_BANCO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONTAS_BANCARIAS') and o.name = 'FK_CONTAS_B_PROGRAMAD_PROGRAMA')
alter table CONTAS_BANCARIAS
   drop constraint FK_CONTAS_B_PROGRAMAD_PROGRAMA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MELHORES_HORARIOS_TRAB') and o.name = 'FK_MELHORES_HORARIOS__HORARIOS')
alter table MELHORES_HORARIOS_TRAB
   drop constraint FK_MELHORES_HORARIOS__HORARIOS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MELHORES_HORARIOS_TRAB') and o.name = 'FK_MELHORES_MELHORESH_PROGRAMA')
alter table MELHORES_HORARIOS_TRAB
   drop constraint FK_MELHORES_MELHORESH_PROGRAMA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NIVEL_DE_CONHECIMENTO') and o.name = 'FK_NIVEL_DE_NIVELDECO_TECNOLOG')
alter table NIVEL_DE_CONHECIMENTO
   drop constraint FK_NIVEL_DE_NIVELDECO_TECNOLOG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NIVEL_DE_CONHECIMENTO') and o.name = 'FK_NIVEL_DE_PROGRAMAD_PROGRAMA')
alter table NIVEL_DE_CONHECIMENTO
   drop constraint FK_NIVEL_DE_PROGRAMAD_PROGRAMA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROGRAMADORES') and o.name = 'FK_PROGRAMA_CIDADE_PR_CIDADE')
alter table PROGRAMADORES
   drop constraint FK_PROGRAMA_CIDADE_PR_CIDADE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BANCO')
            and   type = 'U')
   drop table BANCO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CIDADE')
            and   name  = 'ESTADO_CIDADE_FK'
            and   indid > 0
            and   indid < 255)
   drop index CIDADE.ESTADO_CIDADE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CIDADE')
            and   type = 'U')
   drop table CIDADE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONTAS_BANCARIAS')
            and   name  = 'PROGRAMADORES_CONTASBANCARIAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONTAS_BANCARIAS.PROGRAMADORES_CONTASBANCARIAS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONTAS_BANCARIAS')
            and   name  = 'BANCO_CONTASBANCARIAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONTAS_BANCARIAS.BANCO_CONTASBANCARIAS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONTAS_BANCARIAS')
            and   type = 'U')
   drop table CONTAS_BANCARIAS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTADO')
            and   type = 'U')
   drop table ESTADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HORARIOS')
            and   type = 'U')
   drop table HORARIOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MELHORES_HORARIOS_TRAB')
            and   name  = 'MELHORESHORARIOSTRAB_PROGRAMADORES_FK'
            and   indid > 0
            and   indid < 255)
   drop index MELHORES_HORARIOS_TRAB.MELHORESHORARIOSTRAB_PROGRAMADORES_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MELHORES_HORARIOS_TRAB')
            and   name  = 'HORARIOS_MELHORESHORARIOSTRAB_FK'
            and   indid > 0
            and   indid < 255)
   drop index MELHORES_HORARIOS_TRAB.HORARIOS_MELHORESHORARIOSTRAB_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MELHORES_HORARIOS_TRAB')
            and   type = 'U')
   drop table MELHORES_HORARIOS_TRAB
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NIVEL_DE_CONHECIMENTO')
            and   name  = 'NIVELDECONHECIMENTO_TECNOLOGIAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index NIVEL_DE_CONHECIMENTO.NIVELDECONHECIMENTO_TECNOLOGIAS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NIVEL_DE_CONHECIMENTO')
            and   name  = 'PROGRAMADORES_NIVELDECONHECIMENTO_FK'
            and   indid > 0
            and   indid < 255)
   drop index NIVEL_DE_CONHECIMENTO.PROGRAMADORES_NIVELDECONHECIMENTO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NIVEL_DE_CONHECIMENTO')
            and   type = 'U')
   drop table NIVEL_DE_CONHECIMENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROGRAMADORES')
            and   name  = 'CIDADE_PROGRAMADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROGRAMADORES.CIDADE_PROGRAMADO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROGRAMADORES')
            and   type = 'U')
   drop table PROGRAMADORES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TECNOLOGIAS')
            and   type = 'U')
   drop table TECNOLOGIAS
go

/*==============================================================*/
/* Table: BANCO                                                 */
/*==============================================================*/
create table BANCO (
   ID_BANCO             int                  not null,
   NOME_BANCO           varchar(200)         not null,
   constraint PK_BANCO primary key (ID_BANCO)
)
go

/*==============================================================*/
/* Table: CIDADE                                                */
/*==============================================================*/
create table CIDADE (
   CIDADEID             int                  not null,
   ESTADOID             int                  null,
   NOME                 varchar(200)         not null,
   CAPITAL              binary(2)            null,
   constraint PK_CIDADE primary key (CIDADEID)
)
go

/*==============================================================*/
/* Index: ESTADO_CIDADE_FK                                      */
/*==============================================================*/




create nonclustered index ESTADO_CIDADE_FK on CIDADE (ESTADOID ASC)
go

/*==============================================================*/
/* Table: CONTAS_BANCARIAS                                      */
/*==============================================================*/
create table CONTAS_BANCARIAS (
   ID_CONTA             int                  not null,
   ID_BANCO             int                  null,
   ID_PROG              int                  null,
   TIPO_CONTA           varchar(15)          not null,
   CPF_PROG             char(9)              null,
   AGENCIA_CONTA        varchar(10)          not null,
   NUM_CONTA            varchar(10)          not null,
   constraint PK_CONTAS_BANCARIAS primary key (ID_CONTA)
)
go

/*==============================================================*/
/* Index: BANCO_CONTASBANCARIAS_FK                              */
/*==============================================================*/




create nonclustered index BANCO_CONTASBANCARIAS_FK on CONTAS_BANCARIAS (ID_BANCO ASC)
go

/*==============================================================*/
/* Index: PROGRAMADORES_CONTASBANCARIAS_FK                      */
/*==============================================================*/




create nonclustered index PROGRAMADORES_CONTASBANCARIAS_FK on CONTAS_BANCARIAS (ID_PROG ASC)
go

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   ESTADOID             int                  not null,
   SIGLA                char(2)              not null,
   constraint PK_ESTADO primary key (ESTADOID)
)
go

/*==============================================================*/
/* Table: HORARIOS                                              */
/*==============================================================*/
create table HORARIOS (
   ID_HR                int                  not null,
   DESC_HR              varchar(200)         not null,
   constraint PK_HORARIOS primary key (ID_HR)
)
go

/*==============================================================*/
/* Table: MELHORES_HORARIOS_TRAB                                */
/*==============================================================*/
create table MELHORES_HORARIOS_TRAB (
   ID_PROG              int                  not null,
   ID_HR                int                  not null,
   constraint PK_MELHORES_HORARIOS_TRAB primary key (ID_PROG, ID_HR)
)
go

/*==============================================================*/
/* Index: HORARIOS_MELHORESHORARIOSTRAB_FK                      */
/*==============================================================*/




create nonclustered index HORARIOS_MELHORESHORARIOSTRAB_FK on MELHORES_HORARIOS_TRAB (ID_HR ASC)
go

/*==============================================================*/
/* Index: MELHORESHORARIOSTRAB_PROGRAMADORES_FK                 */
/*==============================================================*/




create nonclustered index MELHORESHORARIOSTRAB_PROGRAMADORES_FK on MELHORES_HORARIOS_TRAB (ID_PROG ASC)
go

/*==============================================================*/
/* Table: NIVEL_DE_CONHECIMENTO                                 */
/*==============================================================*/
create table NIVEL_DE_CONHECIMENTO (
   ID_TECNO             int                  not null,
   ID_PROG              int                  not null,
   NIVEL                int                  not null,
   OUTROS               varchar(400)         null,
   constraint PK_NIVEL_DE_CONHECIMENTO primary key (ID_TECNO, ID_PROG)
)
go

/*==============================================================*/
/* Index: PROGRAMADORES_NIVELDECONHECIMENTO_FK                  */
/*==============================================================*/




create nonclustered index PROGRAMADORES_NIVELDECONHECIMENTO_FK on NIVEL_DE_CONHECIMENTO (ID_PROG ASC)
go

/*==============================================================*/
/* Index: NIVELDECONHECIMENTO_TECNOLOGIAS_FK                    */
/*==============================================================*/




create nonclustered index NIVELDECONHECIMENTO_TECNOLOGIAS_FK on NIVEL_DE_CONHECIMENTO (ID_TECNO ASC)
go

/*==============================================================*/
/* Table: PROGRAMADORES                                         */
/*==============================================================*/
create table PROGRAMADORES (
   ID_PROG              int                  not null,
   CIDADEID             int                  null,
   NOME_PROG            varchar(200)         not null,
   FONE_PROG            varchar(15)          not null,
   SKYPE_PROG           varchar(200)         not null,
   LINKEDIN_PROG        varchar(200)         not null,
   EMAIL_PROG           varchar(200)         not null,
   PORTIFOLIO_PROG      varchar(8000)        null,
   DISPHRTRDIA_PROG     varchar(50)          not null,
   PRETSAL_PROG         decimal              not null,
   LINKCRUD_PROG        varchar(200)         null,
   constraint PK_PROGRAMADORES primary key (ID_PROG)
)
go

/*==============================================================*/
/* Index: CIDADE_PROGRAMADO_FK                                  */
/*==============================================================*/




create nonclustered index CIDADE_PROGRAMADO_FK on PROGRAMADORES (CIDADEID ASC)
go

/*==============================================================*/
/* Table: TECNOLOGIAS                                           */
/*==============================================================*/
create table TECNOLOGIAS (
   ID_TECNO             int                  not null,
   DESC_TECNO           varchar(50)          null,
   constraint PK_TECNOLOGIAS primary key (ID_TECNO)
)
go

alter table CIDADE
   add constraint FK_CIDADE_ESTADO_CI_ESTADO foreign key (ESTADOID)
      references ESTADO (ESTADOID)
go

alter table CONTAS_BANCARIAS
   add constraint FK_CONTAS_B_BANCO_CON_BANCO foreign key (ID_BANCO)
      references BANCO (ID_BANCO)
go

alter table CONTAS_BANCARIAS
   add constraint FK_CONTAS_B_PROGRAMAD_PROGRAMA foreign key (ID_PROG)
      references PROGRAMADORES (ID_PROG)
go

alter table MELHORES_HORARIOS_TRAB
   add constraint FK_MELHORES_HORARIOS__HORARIOS foreign key (ID_HR)
      references HORARIOS (ID_HR)
go

alter table MELHORES_HORARIOS_TRAB
   add constraint FK_MELHORES_MELHORESH_PROGRAMA foreign key (ID_PROG)
      references PROGRAMADORES (ID_PROG)
go

alter table NIVEL_DE_CONHECIMENTO
   add constraint FK_NIVEL_DE_NIVELDECO_TECNOLOG foreign key (ID_TECNO)
      references TECNOLOGIAS (ID_TECNO)
go

alter table NIVEL_DE_CONHECIMENTO
   add constraint FK_NIVEL_DE_PROGRAMAD_PROGRAMA foreign key (ID_PROG)
      references PROGRAMADORES (ID_PROG)
go

alter table PROGRAMADORES
   add constraint FK_PROGRAMA_CIDADE_PR_CIDADE foreign key (CIDADEID)
      references CIDADE (CIDADEID)
go

