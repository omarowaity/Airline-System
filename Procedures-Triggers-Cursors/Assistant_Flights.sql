--Show for every assistant the details of the flight he is working on

use AirlineSystemDB
go

select * from EMPLOYEE
select * from ASSISTANT 
select * from FLIGHT

select A.EMPLOYEE_ID, F.FLIGHT_NUMBER, ARRIVAL_COUNTRY, DEPARTURE_COUNTRY, ARRIVAL_TIME, DEPARTURE_TIME, DURATION
from FLIGHT AS F, ASSISTANT AS A
where F.FLIGHT_NUMBER =A.FLIGHT_NUMBER
order by A.EMPLOYEE_ID