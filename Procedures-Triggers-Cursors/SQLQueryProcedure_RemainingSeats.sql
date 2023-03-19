use AirlineSystemDB
goselect * from FLIGHT
select * from RESERVATION
select * from AIRPLANECREATE PROCEDURE REMAINED_SEAT @FID CHAR(15), @FIRST INTEGER OUT, @FPRICE FLOAT OUT,@BUSS INTEGER OUT,@BPRICE FLOAT OUT,@ECO INTEGER OUT,@EPRICE FLOAT OUTAS	declare @seat_numF int, @seat_numB int, @seat_numE int, @duration float, @seats intBEGIN	set @duration =  (select DURATION from FLIGHT where FLIGHT_NUMBER = @FID)	set @FPRICE = 120.0 * (@duration);	set @BPRICE = 80.0 * (@duration);	set @EPRICE = 40.0 * (@duration);		SET @seat_numF = (SELECT ISNULL(MAX(SEAT_NUMBER), 0) FROM RESERVATION AS R WHERE FID =@FID AND R.CLASS = 'FIRST')	SET @FIRST = 10 - @seat_numF;		SET @seat_numB = (SELECT ISNULL(MAX(SEAT_NUMBER), 0) FROM RESERVATION R WHERE R.FID =@FID AND R.CLASS = 'BUSINESS' ) 	if(@seat_numB = 0)	BEGIN		SET @BUSS = 30;	END	ELSE	BEGIN		SET @BUSS = 40 - @seat_numB	END		SET @seat_numE = (SELECT ISNULL(MAX(SEAT_NUMBER), 0) FROM RESERVATION R WHERE R.FID =@FID AND R.CLASS = 'ECONOMY' )	SET @seats = (SELECT A.NUMBER_OF_SEATS FROM FLIGHT F,AIRPLANE A WHERE F.FLIGHT_NUMBER = @FID AND A.AIRPLANE_ID = F.AID)	if(@seat_numE = 0)	BEGIN		SET @ECO = @seats - 40	END	ELSE	BEGIN		SET @ECO = @seats - @seat_numE	END	END

/*declare @FIRST INTEGER , @FPRICE FLOAT ,@BUSS INTEGER,@BPRICE FLOAT,@ECO INTEGER,@EPRICE FLOAT
exec REMAINED_SEAT 'AI381',@FIRST OUT, @FPRICE OUT,@BUSS OUT,@BPRICE OUT,@ECO OUT,@EPRICE OUT

print 'The remaining seats of first class are ' + convert(char(4),@FIRST) + 'with price ' + convert(char(5),@FPRICE) + '
The remaining seats of business class are ' + convert(char(4),@BUSS) + 'with price ' + convert(char(5),@BPRICE) + '
The remaining seats of economy class are ' + convert(char(4),@ECO) + 'with price ' + convert(char(5),@EPRICE)*/


--drop procedure REMAINED_SEAT