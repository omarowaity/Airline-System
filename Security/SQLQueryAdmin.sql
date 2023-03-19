Create login admin
with password = 'admin100'

USE AirlineSystemDB
Create user omar FOR LOGIN admin


Create role Admin
grant select, insert, update, delete to Admin

ALTER ROLE Admin ADD MEMBER omar
