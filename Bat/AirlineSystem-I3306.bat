set lab=C:\Users\user\Desktop\I3306-Project
set serv=-S JINEEN\SQLEXPRESS -U sa -P jo70872589 -w 300
set DBApp=AirlineSystem
cls
echo Begining...

osql %serv% -i %lab%\SQL\%DBApp%_createDB.sql -o %lab%\Log\%DBApp%_createDB.log
echo database created...

osql %serv% -i %lab%\SQL\%DBApp%_createTables.sql -o %lab%\Log\%DBApp%_createTables.log
osql %serv% -i %lab%\SQL\%DBApp%_createTriggers.sql -o %lab%\Log\%DBApp%_createTriggers.log
osql %serv% -i %lab%\SQL\%DBApp%_createIndexes.sql -o %lab%\Log\%DBApp%_createIndexes.log

echo inserting data...
osql %serv% -i %lab%\SQL\%DBApp%_insertData.sql -o %lab%\Log\%DBApp%_insertData.log

echo End of batch file....