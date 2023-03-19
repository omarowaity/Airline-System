/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     17/03/2022 10:30:17 PM                       */
/*==============================================================*/

use AirlineSystemDB
go



create trigger TD_FLIGHT on FLIGHT for delete as
begin
    declare
       @numrows  int,
       @errno    int,
       @errmsg   varchar(255)

    select  @numrows = @@rowcount
    if @numrows = 0
       return

    /*  Cannot delete parent "FLIGHT" if children still exist in "RESERVATION"  */
    if exists (select 1
               from   RESERVATION t2, deleted t1
               where  t2.FID = t1.FLIGHT_NUMBER)
       begin
          select @errno  = 50006,
                 @errmsg = 'Children still exist in "RESERVATION". Cannot delete parent "FLIGHT".'
          goto error
       end


    return

/*  Errors handling  */
error:
    RAISERROR (@errmsg, @errno, -1)
    rollback  transaction
end
go


create trigger TU_FLIGHT on FLIGHT for update as
begin
   declare
      @numrows  int,
      @numnull  int,
      @errno    int,
      @errmsg   varchar(255)

      select  @numrows = @@rowcount
      if @numrows = 0
         return

      /*  Cannot modify parent code in "FLIGHT" if children still exist in "RESERVATION"  */
      if update(FLIGHT_NUMBER)
      begin
         if exists (select 1
                    from   RESERVATION t2, inserted i1, deleted d1
                    where  t2.FID = d1.FLIGHT_NUMBER
                     and  (i1.FLIGHT_NUMBER != d1.FLIGHT_NUMBER))
            begin
               select @errno  = 50005,
                      @errmsg = 'Children still exist in "RESERVATION". Cannot modify parent code in "FLIGHT".'
               goto error
            end
      end


      return

/*  Errors handling  */
error:
    RAISERROR (@errmsg, @errno, -1)
    rollback  transaction
end
go




create trigger TD_PASSENGER on PASSENGER for delete as
begin
    declare
       @numrows  int,
       @errno    int,
       @errmsg   varchar(255)

    select  @numrows = @@rowcount
    if @numrows = 0
       return

    /*  Cannot delete parent "PASSENGER" if children still exist in "RESERVATION"  */
    if exists (select 1
               from   RESERVATION t2, deleted t1
               where  t2.PID = t1.PASS_ID)
       begin
          select @errno  = 50006,
                 @errmsg = 'Children still exist in "RESERVATION". Cannot delete parent "PASSENGER".'
          goto error
       end


    return

/*  Errors handling  */
error:
    RAISERROR (@errmsg, @errno, -1)
    rollback  transaction
end
go


create trigger TU_PASSENGER on PASSENGER for update as
begin
   declare
      @numrows  int,
      @numnull  int,
      @errno    int,
      @errmsg   varchar(255)

      select  @numrows = @@rowcount
      if @numrows = 0
         return

      /*  Cannot modify parent code in "PASSENGER" if children still exist in "RESERVATION"  */
      if update(PASS_ID)
      begin
         if exists (select 1
                    from   RESERVATION t2, inserted i1, deleted d1
                    where  t2.PID = d1.PASS_ID
                     and  (i1.PASS_ID != d1.PASS_ID))
            begin
               select @errno  = 50005,
                      @errmsg = 'Children still exist in "RESERVATION". Cannot modify parent code in "PASSENGER".'
               goto error
            end
      end


      return

/*  Errors handling  */
error:
    RAISERROR (@errmsg, @errno, -1)
    rollback  transaction
end
go


create trigger TI_RESERVATION on RESERVATION for insert as
begin
    declare
       @numrows  int,
       @numnull  int,
       @errno    int,
       @errmsg   varchar(255)

    select  @numrows = @@rowcount
    if @numrows = 0
       return

    /*  Parent "FLIGHT" must exist when inserting a child in "RESERVATION"  */
    if update(FID)
    begin
       if (select count(*)
           from   FLIGHT t1, inserted t2
           where  t1.FLIGHT_NUMBER = t2.FID) != @numrows
          begin
             select @errno  = 50002,
                    @errmsg = 'Parent does not exist in "FLIGHT". Cannot create child in "RESERVATION".'
             goto error
          end
    end
    /*  Parent "PASSENGER" must exist when inserting a child in "RESERVATION"  */
    if update(PID)
    begin
       if (select count(*)
           from   PASSENGER t1, inserted t2
           where  t1.PASS_ID = t2.PID) != @numrows
          begin
             select @errno  = 50002,
                    @errmsg = 'Parent does not exist in "PASSENGER". Cannot create child in "RESERVATION".'
             goto error
          end
    end

    return

/*  Errors handling  */
error:
    RAISERROR (@errmsg, @errno, -1)
    rollback  transaction
end
go


create trigger TU_RESERVATION on RESERVATION for update as
begin
   declare
      @numrows  int,
      @numnull  int,
      @errno    int,
      @errmsg   varchar(255)

      select  @numrows = @@rowcount
      if @numrows = 0
         return

      /*  Parent "FLIGHT" must exist when updating a child in "RESERVATION"  */
      if update(FID)
      begin
         if (select count(*)
             from   FLIGHT t1, inserted t2
             where  t1.FLIGHT_NUMBER = t2.FID) != @numrows
            begin
               select @errno  = 50003,
                      @errmsg = 'FLIGHT" does not exist. Cannot modify child in "RESERVATION".'
               goto error
            end
      end
      /*  Parent "PASSENGER" must exist when updating a child in "RESERVATION"  */
      if update(PID)
      begin
         if (select count(*)
             from   PASSENGER t1, inserted t2
             where  t1.PASS_ID = t2.PID) != @numrows
            begin
               select @errno  = 50003,
                      @errmsg = 'PASSENGER" does not exist. Cannot modify child in "RESERVATION".'
               goto error
            end
      end

      return

/*  Errors handling  */
error:
    RAISERROR (@errmsg, @errno, -1)
    rollback  transaction
end
go

