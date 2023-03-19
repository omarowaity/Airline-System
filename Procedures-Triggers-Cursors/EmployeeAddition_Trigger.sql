use AirlineSystemDB
go

CREATE TRIGGER ADDITION_TRIGGER 
ON EMPLOYEE FOR INSERT 
AS
DECLARE @COUN INTEGER;
SET @COUN = (SELECT COUNT(EMPLOYEE.EMPLOYEE_NAME) FROM EMPLOYEE,inserted WHERE EMPLOYEE.EMPLOYEE_NAME = inserted.EMPLOYEE_NAME);
IF @COUN >= 2
BEGIN
print ('****************Name found before******************');
ROLLBACK;
END
SET @COUN = (SELECT COUNT(EMPLOYEE.EMAIL) FROM EMPLOYEE,inserted WHERE EMPLOYEE.EMAIL = inserted.EMAIL);
IF @COUN >= 2
BEGIN
print ('****************Email found before******************');
ROLLBACK;
END
go