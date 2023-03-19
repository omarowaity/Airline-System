/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     17/03/2022 10:19:31 PM                       */
/*==============================================================*/
use AirlineSystemDB
go

/*==============================================================*/
/* Table: AIRPLANE                                              */
/*==============================================================*/
create table AIRPLANE (
   AIRPLANE_ID          char(10)             not null,
   AIRPLANE_NAME        varchar(30)          null,
   TYPE                 varchar(15)          null,
   NUMBER_OF_SEATS      int                  null,
   constraint PK_AIRPLANE primary key (AIRPLANE_ID)
)
go

/*==============================================================*/
/* Table: EMPLOYEE                                              */
/*==============================================================*/
create table EMPLOYEE (
   EMPLOYEE_ID          char(10)             not null,
   EMPLOYEE_NAME        varchar(30)          null,
   JOB_TITLE            varchar(30)          null,
   SALARY               float                null,
   BIRTHDAY             datetime             null,
   EMAIL                varchar(30)          null,
   ADDRESS              varchar(50)          null,
   PHONE_NUMBER         char(15)             null,
   constraint PK_EMPLOYEE primary key (EMPLOYEE_ID)
)
go

/*==============================================================*/
/* Table: FLIGHT                                                */
/*==============================================================*/
create table FLIGHT (
   FLIGHT_NUMBER        char(15)             not null,
   PILOT                char(10)             not null,
   AID                  char(10)             not null,
   ARRIVAL_COUNTRY      varchar(30)          null,
   DEPARTURE_COUNTRY    varchar(30)          null,
   ARRIVAL_TIME         datetime             null,
   DEPARTURE_TIME       datetime             null,
   DURATION             float                null,
   constraint PK_FLIGHT primary key (FLIGHT_NUMBER),
   constraint FK_FLIGHT_HAS_AIRPLANE foreign key (AID)
      references AIRPLANE (AIRPLANE_ID),
   constraint FK_FLIGHT_PILOTS_EMPLOYEE foreign key (PILOT)
      references EMPLOYEE (EMPLOYEE_ID)
)
go

/*==============================================================*/
/* Table: ASSISTANT                                             */
/*==============================================================*/
create table ASSISTANT (
   EMPLOYEE_ID          char(10)             not null,
   FLIGHT_NUMBER        char(15)             not null,
   constraint PK_ASSISTANT primary key (EMPLOYEE_ID, FLIGHT_NUMBER),
   constraint FK_ASSISTAN_ASSISTANT_FLIGHT foreign key (FLIGHT_NUMBER)
      references FLIGHT (FLIGHT_NUMBER),
   constraint FK_ASSISTAN_ASSISTANT_EMPLOYEE foreign key (EMPLOYEE_ID)
      references EMPLOYEE (EMPLOYEE_ID)
)
go

/*==============================================================*/
/* Table: PASSENGER                                             */
/*==============================================================*/
create table PASSENGER (
   PASS_ID              char(10)             not null,
   NAME                 varchar(30)          null,
   BIRTHDAY             datetime             null,
   ADDRESS              varchar(50)          null,
   PHONE_NUMBER         char(15)             null,
   EMAIL                varchar(30)          null,
   PASSWORD             char(15)             null,
   constraint PK_PASSENGER primary key (PASS_ID)
)
go

/*==============================================================*/
/* Table: RESERVATION                                           */
/*==============================================================*/
create table RESERVATION (
   RID                  int       IDENTITY(1,1)       not null,
   FID                  char(15)             not null,
   PID                  char(10)             not null,
   SEAT_NUMBER          int                  null,
   PRICE                float                null,
   CLASS                char(10)             null,
   constraint PK_RESERVATION primary key (RID)
)
go