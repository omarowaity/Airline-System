Create login passenger
with password = 'pass100'

USE AirlineSystemDB
Create user ibrahim FOR LOGIN passenger


Create role Passenger
grant select on FLIGHT to Passenger
grant insert on RESERVATION to Passenger
grant select,update on PASSENGER to Passenger

ALTER ROLE Passenger ADD MEMBER ibrahim