use AirlineSystemDB
go
select * from RESERVATION
select * from AIRPLANE

/*declare @FIRST INTEGER , @FPRICE FLOAT ,@BUSS INTEGER,@BPRICE FLOAT,@ECO INTEGER,@EPRICE FLOAT
exec REMAINED_SEAT 'AI381',@FIRST OUT, @FPRICE OUT,@BUSS OUT,@BPRICE OUT,@ECO OUT,@EPRICE OUT

print 'The remaining seats of first class are ' + convert(char(4),@FIRST) + 'with price ' + convert(char(5),@FPRICE) + '
The remaining seats of business class are ' + convert(char(4),@BUSS) + 'with price ' + convert(char(5),@BPRICE) + '
The remaining seats of economy class are ' + convert(char(4),@ECO) + 'with price ' + convert(char(5),@EPRICE)*/


--drop procedure REMAINED_SEAT