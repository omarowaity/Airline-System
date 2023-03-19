use AirlineSystemDB
go

--To check each passenger how many reservations he has

/*create view numberOfreservations as
select P.pass_id, COUNT(*) as resnumber
	from PASSENGER P,  RESERVATION R
	where P.PASS_ID = R.PID
	group by P.PASS_ID */



Declare PassengerReservation CURSOR
FOR

select P.pass_id, name , F.Flight_number, DEPARTURE_COUNTRY, ARRIVAL_COUNTRY --,PID, FID
	from PASSENGER P, FLIGHT F, RESERVATION R
	where P.PASS_ID = R.PID
	and F.FLIGHT_NUMBER = R.FID
	order by P.PASS_ID

declare  @pass_id char(10), @currentpass_id char(10), @name varchar(30), @flight_number char(15), @departure_country varchar(30), @arrival_country varchar(30), @count char(4)
set @currentpass_id = 'NULL'
open PassengerReservation
FETCH NEXT FROM PassengerReservation INTO  @pass_id, @name, @flight_number, @departure_country, @arrival_country

WHILE @@FETCH_STATUS = 0
BEGIN
	if(@pass_id != @currentpass_id)
	begin
		if(@count != 0)
		BEGIN
			--print 'Number of reservations: '+ cast(@count as char(4))
			print'--------------------------------------------------'
		END
		set @count = cast((select resnumber from numberOfreservations where PASS_ID = @pass_id) as char(4))
		set @currentpass_id = @pass_id
		print 'Passenger: '+ @currentpass_id + 'Number of reservations: '+@count
	end
	--set @count = @count + 1
	print '-'+ @flight_number + 'From: ' + @departure_country + ' To: ' + @arrival_country

FETCH NEXT FROM PassengerReservation INTO   @pass_id, @name, @flight_number, @departure_country, @arrival_country
END

close PassengerReservation
Deallocate PassengerReservation