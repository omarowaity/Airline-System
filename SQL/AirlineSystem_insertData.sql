use AirlineSystemDB
go

INSERT INTO AIRPLANE  values
			('222','Airbus A330', 'A330-200', 200),
			('001','Airbus A320', 'A320-200', 120),
			('098','Airbus A321neo', 'A321neo', 160),
			('220','Airbus A330', 'A330-200', 210),
			('125','Airbus A320', 'A320-200', 100),
			('157','Airbus A321neo', 'A321neo', 150),
			('589','Airbus A330', 'A330-200', 215),
			('176','Airbus A320', 'A320-200', 124),
			('607','Airbus A321neo', 'A321neo', 145);
			
INSERT INTO EMPLOYEE values
			('271', 'Anthony Wilson', 'Pilot', 32000.00, '02/04/1971', 'anothonywil@gmail.com','New York City, NY','4444678903'),
			('272', 'Patrick Gomes', 'Pilot', 45000.00, '11/19/1968', 'gomespat@gmail.com', '334 VITRUVIAN PARK, ALBANY, NY', '2147179657'),
			('371', 'Johnny Paul', 'Airport assistant', 4000.00, '10/23/1990', '', '638 Voss, Houston, TX', '3947483605'),
			('372', 'Victor Holmes','Airport assistant', 3500.00, '02/29/1992', '', '123 TOP HILL, SAN Francisco,CA', '2147483647'),
			('373', 'Nikita Paul', 'Airport assistant', 4200.00, '07/31/1987', 'nikitaap@gmail.com', '110 SYNERGY PARK, DALLAS,TX', '9900483647'),
			('221', 'Raj Khan', 'Pilot', 30000.00, '09/02/1982', 'rajkhan@gmail.com', 'MUMBAI, INDIA', '9512348612'),
			('222', 'Raj Sharma', 'Pilot', 30000.00, '04/25/1976', 'rajkhan@gmail.com', '345 FLOYDS, MUMBAI,INDIA', '4326789031'),
			('321', 'Shubam Gupta', 'Airport assistant', 4200.00, '08/27/1988','','567 CHANDANI CHOWK, DELHI, INDIA','8566778890'),
			('322', 'Adit Desat', 'Airport assistant', 4000.00, '11/12/1974', 'aditdesat@gmail.com', '987 SOMNATH, CHANDIGARH, INDIA', '6147153647'),
			('231', 'Toni Kroos','Pilot', 37000.00, '09/23/1984', 'tkroos@gmail.com', 'Munich,GERMANY', '1235464884'),
			('232', 'Thomas Muller','Pilot', 41000.00, '11/15/1979', 'tmuller@gmail.com', '', ''),
			('331', 'Harry Gomez','Airport assistant', 15000.00, '03/27/1985', 'gomezz@gmail.com', 'Berlin,GERMANY', '1324788955'),
			('332', 'Sheldon Cooper','Airport assistant', 45000.00, '02/15/1980', 'sheldcoop@gmail.com', '345 CHERRY PARK, HESSE,GERMANY', '1254678903'),
			('201', 'Ali Aloush','Pilot', 20000.00, '12/01/1981', 'ali123@gmail.com', 'Saida,Lebanon', '03915234'),
			('301', 'Mostafa Taher','Airport assistant', 1000.00, '07/22/1991', 'taher@gmail.com', 'Beirut,Lebanon', ''),
			('302', 'Mohammad Dabboura','Airport assistant', 1500.00, '11/02/1977', 'database@gmail.com', 'Hadath,Lebanon', '03875698'),
			('303', 'Ibrahim Bazzal','Airport assistant', 25000.00, '01/01/1972', 'barhoumxolove@gmail.com', 'Beirut,Lebanon', '71489823'),
			('212', 'Mostafa Matar','Pilot', 40000.00, '11/21/1980', 'mmatar@gmail.com', '', '9821456312'),
			('311', 'Mohammad Amori','Airport assistant', 15000.00, '09/01/1991', 'mamori@gmail.com', 'Dubai,UAE', '3003875698'),
			('312', 'Ahmad Saleh','Airport assistant', 18000.00, '08/24/1988', 'saleh12@gmail.com', 'Ajman,UAE', '9382735698'),
			('313', 'Ali Mabkhout','Airport assistant', 20000.00, '11/04/1987', 'mabkhout@gmail.com', '', '1100875698'),
			('314', 'Walid Jasem','Airport assistant', 30000.00, '10/16/1976', 'walidjj@gmail.com', 'Dubai,UAE', '7214819823'),
			('315', 'Ali Maaloul','Airport assistant', 15000.00, '08/12/1977', 'maaloul123@gmail.com', 'Sharjah,UAE', '0391159234'),
			('316', 'Fawaz Hamdi','Airport assistant', 25000.00, '01/03/1977', 'hfawaz@gmail.com', 'Dubai,UAE', '9871489823'),
			('261', 'Reem Khalifa','Pilot', 39000.00, '11/06/1979', 'reemkhalifa@gmail.com', '', '153875698'),
			('262', 'Rashid Mansour','Pilot', 40000.00, '12/14/1978', '', 'Abu Dhabi,UAE', '1321915234'),
			('241', 'Nacho Fernandez','Pilot', 30000.00, '01/18/1980', 'nachofdz@gmail.com', 'Madrid,Spain', '173973598'),
			('342', 'Daniel Carvajal','Airport assistant', 20000.00, '11/01/1982', 'danicar@gmail.com', 'Malaga,Spain', '1312916634'),
			('341', 'Alvaro Arbeloa','Airport assistant', 20000.00, '04/17/1983', 'alvaroarb@gmail.com', 'Seville,Spain', '1488075698'),
			('281', 'Andy Caroll','Pilot', 45000.00, '10/23/1982', 'andyc@gmail.com', 'Fulham,UK', '1311416324'),
			('381', 'Peter Crouch','Airport assistant', 25000.00, '11/17/1980', 'peter222@gmail.com', 'London,UK', '1483374598'),
			('382', 'Dany Ings','Airport assistant', 20000.00, '03/11/1988', 'ingsd@gmail.com', 'Liverpool,UK', '1804475698');
			
INSERT INTO FLIGHT(Flight_number, Aid, Pilot, Departure_country, Arrival_country, Departure_time, Arrival_time, Duration) values
			('EY123','222','201','Lebanon', 'Qatar', '02/20/2022 19:20','02/20/2022 20:50', 1.5),
			('EY228','607','212','Emirates', 'United States', '02/28/2022 12:15', '03/01/2022 07:15', 19.0),
			('EY224','607','212', 'Emirates', 'Lebanon', '02/14/2022 17:00', '02/14/2022 19:30', 2.5),
			('AI113','098','222', 'India', 'United Kingdom', '05/03/2022 20:15', '05/04/2022 11:45', 15.5),
			('TG331','220','231', 'Germany', 'United Kingdom', '03/07/2022 23:20', '03/08/2022 02:20', 3.0),
			('AI333','098','222', 'India', 'Lebanon', '05/14/2022 07:15', '05/14/2022 12:15', 5.0),
			('TG315','220','232', 'Qatar', 'Germany', '02/25/2022 16:00', '02/25/2022 23:00', 7.0),
			('TG323','220','231', 'Germany', 'United States', '02/19/2022 19:00', '02/20/2022 10:00', 15.0),
			('SQ406','589','241', 'Spain', 'Emirates', '03/11/2022 11:45', '03/11/2022 20:45', 9.0),
			('SQ402','589','241', 'Spain', 'Germany', '03/28/2022 20:05', '03/29/2022 02:05', 6.0),
			('AI381','098','222', 'India', 'Turkey', '03/18/2022 04:00', '03/18/2022 11:30', 7.5),
			('IX115','222','201', 'Russia', 'Lebanon', '03/01/2022 15:45', '03/01/2022 20:45', 5.0),
			('EY229','607','212', 'Emirates', 'Saudi Arabia', '02/27/2022 06:00', '02/27/2022 09:00', 3.0),
			('TG332','176','262', 'Emirates', 'Thailand', '04/08/2022 18:00', '04/09/2022 03:30', 9.5),
			('TG324','176','261', 'Greece', 'Emirates', '04/12/2022 06:00', '04/12/2022 11:00', 5.0),
			('SQ401','001','272', 'United States', 'Canada', '04/04/2022 03:10', '04/04/2022 09:10', 6.0),
			('SQ403','001','272', 'Brazil','United States', '03/19/2022 17:30', '03/19/2022 22:30', 5.0),
			('AI380','098','221', 'Japan', 'India', '03/26/2022 19:45', '03/26/2022 23:15', 3.5),
			('9W264','125','281', 'Spain', 'United Kingdom', '04/09/2022 04:00', '04/09/2022 09:00', 5.0),
			('AI436','001','272', 'United States', 'United States', '02/09/2022 06:25', '02/09/2022 09:25', 3.0),
			('AI763','125','281', 'United Kingdom', 'Germany', '04/16/2022 03:20', '04/16/2022 09:20', 6.0);
			
			

INSERT INTO PASSENGER values
			('22', 'Dustin', '10/10/1998', 'Spain', '1310450227', 'dustysp@gmail.com','dustin22'),
 			('29', 'Brutus', '01/19/1982', 'United Kingdom', '1490228330', 'brutus123@gmail.com', 'brutus29'),
 			('31', 'Lubber', '11/06/1988', 'United States', '2295551480', 'lubber222@gmail.com', 'lubber31'),
 			('32', 'Andy', '06/30/1990', 'Germany', '2552261470', 'andyone@gmail.com', 'andy32'),
 			('58', 'Rusty', '08/15/1996', 'United States', '1460119355', 'rusty555@gmail.com', 'rusty58'),
 			('64', 'Horatio','10/07/1975', 'Japan', '3551180145', 'horajapan@gmail.com', 'horatio64'),
 			('71', 'Zorba', '05/21/1978', 'Canada', '1044160117', 'zorbabelzewye@gmail.com', 'zorba71'),
 			('74', 'Smith','11/12/1968', 'United Kingdom', '1430115350', 'smithbritt@gmail.com', 'smith74'),
 			('85', 'Art', '04/29/1970', 'Spain', '1142551420', 'bartart@gmail.com', 'art85'),
 			('95', 'Bob', '03/19/1984', 'United Kingdom', '4110223635', 'barhoumxo@gmail', 'bob95'),
			('68', 'Alen', '03/22/1994', 'Germany', '4502221510', 'alen123@gmail.com', 'alen68'),
 			('41', 'Ankita', '06/05/1981', 'India', '1123300152', 'anakita22@gmail.com', 'ankita41'),
 			('98', 'Tejashree', '07/22/1987', 'India', '1530111555', 'hellobrozer@gmail.com', 'tejashree98'),
 			('04', 'Lakshmi', '09/28/1991', 'Turkey', '1312551540', 'shawarmaturkey@gmail.com', 'lakshmi04'),
 			('66', 'Reem', '05/09/2000', 'UAE', '3551391055', 'reem6d6b@gmail.com', 'reem66'),
 			('30', 'Mona','04/01/1970', 'United Kingdom', '1560138355', 'monauk@gmail,com', 'mona30'),
 			('35', 'Zainab', '11/02/1988', 'Lebanon', '1601371690', 'zaineb11@gmail.com', 'zainab35'),
 			('34', 'Romy','07/14/1969', 'Qatar','3501316806', 'romy@gmail.com', 'romy34'),
 			('67', 'Mohammad', '06/30/1979', 'UAE', '1067255135', 'moeak@gmail.com', 'mohammad67'),
 			('69', 'Adam', '10/13/1985', 'Lebanon', '1066134635', 'adamtest@gmail.com', 'adam69'),
			('89', 'John','12/30/1978', 'Germany', '3551331650', 'johnson@gmail.com', 'john89'),
 			('55', 'Sarah', '02/09/1985', 'UAE', '1601041063', 'sosocute@gmail.com', 'sarah55'),
 			('90', 'Alia','09/01/1964', 'Lebanon','1064350103', 'aliasb@gmail.com', 'alia90'),
 			('36', 'Suha', '06/29/1976', 'United States', '1610255102', 'suhaenglish@gmail.com', 'suha36'),
 			('06', 'Ria', '05/03/1995', 'India', '6351011910', 'scoopwithria@gmail.com', 'ria06');
			
INSERT INTO RESERVATION values
			('SQ402','22', 41, 240.00, 'ECONOMY'),
			('9W264','22', 41, 200.00, 'ECONOMY'),
			('9W264','29', 11, 400.00, 'BUSINESS'),
			('SQ401','31', 1, 720.00, 'FIRST'),
			('TG331','32', 41, 120.00, 'ECONOMY'),
			('SQ401','58', 41, 240.00, 'ECONOMY'),
			('SQ403','58', 1, 600.00, 'FIRST'),
			('AI380','64', 11, 280.00, 'BUSINESS'),
			('SQ401','71', 42, 240.00, 'ECONOMY'),
			('AI763','74', 11, 480.00, 'BUSINESS'),
			('SQ406','85', 41, 360.00, 'ECONOMY'),
			('AI763','95', 41, 240.00, 'ECONOMY'),
			('TG323','68', 11, 1200.00, 'BUSINESS'),
			('AI381','41', 41, 300.00, 'ECONOMY'),
			('AI381','98', 42, 300.00, 'ECONOMY'),
			('AI381','04', 11, 600.00, 'BUSINESS'),
			('EY224','66', 41, 100.00, 'ECONOMY'),
			('AI763','30', 42, 240.00, 'ECONOMY'),
			('EY123','35', 11, 120.00, 'BUSINESS'),
			('TG315','34', 11, 560.00, 'BUSINESS'),
			('EY224','67', 1, 300.00, 'FIRST'),
			('TG331','89', 42, 120.00, 'ECONOMY'),
			('EY228','55', 41, 760.00, 'ECONOMY'),
			('IX115','90', 41, 120.00, 'ECONOMY'),
			('AI436','36', 41, 120.00, 'ECONOMY'),
			('SQ401','36', 43, 240.00, 'ECONOMY'),
			('AI333','06', 11, 400.00, 'BUSINESS'),
			('AI113','06', 1, 1860.00, 'FIRST');
			


INSERT INTO ASSISTANT values
			('311','EY228'),('311','EY224'),('312','EY224'),('313','SQ406'),('314','EY229'),('315','TG332'),('315','TG324'),
			('371','EY228'),('371','TG323'),('371','AI436'),('372','SQ401'),('372','SQ403'),('373','SQ401'),('373','AI436'),
			('301','EY123'),('301','AI333'),('302','IX115'),('302','EY224'),('303','IX115'),
			('381','AI113'),('381','TG331'),('381','AI763'),('382','AI763'),('382','9W264'),
			('321','AI113'),('321','AI333'),('322','AI381'),('322','AI380'),
			('331','TG331'),('331','TG315'),('331','TG323'),('332','SQ402'),('332','TG315'),
			('341','SQ402'),('341','9W264'),('342','SQ406');