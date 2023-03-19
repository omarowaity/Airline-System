USE master

GO

CREATE DATABASE AirlineSystemDB
ON 
( NAME = AirlineSystemDB_dat,
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AirlineSystemDB.mdf')
LOG ON
( NAME = 'AirlineSystemDB_log',
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AirlineSystemDB.ldf')

go