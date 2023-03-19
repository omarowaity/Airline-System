/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     17/03/2022 10:25:35 PM                       */
/*==============================================================*/

use AirlineSystemDB
go


/*==============================================================*/
/* Index: ASSISTANT2_FK                                         */
/*==============================================================*/




create nonclustered index ASSISTANT2_FK on ASSISTANT (FLIGHT_NUMBER ASC)
go

/*==============================================================*/
/* Index: OWNS_FK                                               */
/*==============================================================*/




create nonclustered index OWNS_FK on FLIGHT (AID ASC)
go

/*==============================================================*/
/* Index: PILOTS_FK                                             */
/*==============================================================*/




create nonclustered index PILOTS_FK on FLIGHT (PILOT ASC)
go

/*==============================================================*/
/* Index: REQUIRES_FK                                           */
/*==============================================================*/




create nonclustered index REQUIRES_FK on RESERVATION (FID ASC)
go

/*==============================================================*/
/* Index: MAKES_FK                                              */
/*==============================================================*/




create nonclustered index MAKES_FK on RESERVATION (PID ASC)
go

