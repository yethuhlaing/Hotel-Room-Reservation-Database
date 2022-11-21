Create table Customer(
	CustomerID Varchar(20) Not null,
	CustomerName Varchar(100),
	CustomerDOB Date,
	NRC Varchar(100),
	Gender Varchar(50),
	Address Varchar(100),
	PhoneNumber Varchar(50),
	Primary Key(CustomerID),
	Check (Gender in('Male', 'Female'))
);


Create table Reservation(
	ReservationCode Varchar(20) Not null,
	CustomerID  Varchar(20) Not null,
	ReservationDate Date,
	CheckInDate Date,
	CheckOutDate Date,
	Duration Varchar(100),
	NumberOfRooms integer,
	Primary Key(ReservationCode),
	Foreign Key(CustomerID) references Customer(CustomerID) 
);
Select * from Reservation

Create Table Payment(
	PaymentCode Varchar(20) Not null,
	ReservationCode Varchar(20) Not null,
	PaymentDate Date,
	PaymentPrice Varchar(100),
	PaymentType Varchar(100),
	CardNum Varchar(100),
	Primary Key(PaymentCode),
	Foreign Key(ReservationCode) references Reservation(ReservationCode)
);




Create table Staff(
	StaffID Varchar(20) Not null,
	StaffName Varchar(100),
	Position Varchar(100),
	Gender Varchar(50),
	Address Varchar(100),
	PhoneNumber Varchar(50),
	Primary Key(StaffID),
	Check (Gender in('Male', 'Female'))
);
Select * from Staff;


Create table RoomService(
	ServiceCode Varchar(20) Not null,
	StaffID Varchar(20) Not null,
	RoomServiceType Varchar(100),
	RoomServicePrice Varchar(100),
	Primary Key(ServiceCode),
	Foreign Key(StaffID) references Staff(StaffID)
);



Create table RoomType(
	RoomTypeCode Varchar(20) Not null,
	RoomType Varchar(100),
	RoomPrice Varchar(100),
	Primary Key(RoomTypeCode),
);

Select * from RoomType;

Create table Rating(
	RatingCode Varchar(20) Not null,
	RatingType Varchar(100),
	Rating integer,
	Primary Key(RatingCode),
);

Create table Room(
	RoomCode Varchar(20) Not null,
	RatingCode Varchar(20) Not null,
	RoomTypeCode Varchar(20) Not null,
	RoomAvailability Varchar(20), 
	Floor Varchar(100),
	Primary Key(RoomCode),
	Foreign Key(RatingCode) references Rating(RatingCode),
	Foreign Key(RoomTypeCode) references RoomType(RoomTypeCode),
	Check (RoomAvailability in ('yes', 'no')),
);


Create table RoomReservationDetails(
	ReservationCode Varchar(20) Not null,
	RoomCode Varchar(20) Not null,
	Foreign Key(ReservationCode) references Reservation(ReservationCode),
	Foreign Key(RoomCode) references Room(RoomCode),
	Primary Key(ReservationCode, RoomCode)
);



Create table RoomServiceDetails(
	ServiceCode Varchar(20) Not null,
	RoomCode Varchar(20) Not null,
	Foreign Key(ServiceCode) references RoomService(ServiceCode),
	Foreign Key(RoomCode) references Room(RoomCode),
	Primary Key(ServiceCode, RoomCode)
);






insert into Staff (StaffID, StaffName, Position, Gender, Address, PhoneNumber)
values('S-0001','James', 'Event Planner', 'Male', 'Yankin', '09-798232321' ),
('S-0002','Robert', 'Executive Chef', 'Male', 'Yankin', '09-178432321' ),
('S-0003','John', 'Hotel General Manager', 'Male','Bahan', '09-183232321' ),
('S-0004','Michael', 'Waiter', 'Male', 'Bahan', '09-742932321' ),
('S-0005','Mary', 'Housekeeper', 'Female', 'Latha', '09-924632321' ),
('S-0006','Patricia', 'Concierge', 'Female', 'Latha', '09-273492463' ),
('S-0007','Jennifer','Waitress', 'Female', 'Hlaing', '09-916492463' ),
('S-0008','Christopher', 'Chef', 'Male', 'Hlaing', '09-671292463' ),
('S-0009','Daniel', 'Chef', 'Male', 'Hlaing', '09-639267129' ),
('S-0010','Matthew', 'Driver', 'Male', 'Lanmadaw', '09-985267129' ),
('S-0011','Anthony', 'Driver', 'Male', 'Lanmadaw', '09-719267129' ),
('S-0012','Sandra', 'Housekeeper', 'Female', 'Pabedan', '09-857267129' ),
('S-0013','Ashley', 'Housekeeper', 'Female', 'Pabedan', '09-986285726' ),
('S-0014','Kimberly', 'Housekeeper', 'Female', 'Pabedan', '09-528185726' );
Select * from Staff;

insert into RoomService(ServiceCode, StaffID, RoomServiceType, RoomServicePrice)
values('SC-0001','S-0001','Event Planning', '$100' ),
('SC-0002','S-0003','Room General Management', '$10' ),
('SC-0003','S-0005','Room Cleaning & Chore', '$15' ),
('SC-0004','S-0012','Room Cleaning & Chore', '$25' ),
('SC-0005','S-0013','Room Cleaning & Chore', '$35' ),
('SC-0006','S-0014','Room Cleaning & Chore', '$45' ),
('SC-0007','S-0008','Food', '$30' ),
('SC-0008','S-0004','Food Delievery', '$5' ),
('SC-0009','S-0007','Food Delievery', '$5' );


Select * from RoomService;
 
insert into Rating(RatingCode, RatingType, Rating)
values('RC-0001','Star', 1),
('RC-0002','Star', 2),
('RC-0003','Star', 3),
('RC-0004','Star', 4),
('RC-0005','Star', 5),
('RC-0006','Star', 6),
('RC-0007','Star', 7),
('RC-0008','Star', 8),
('RC-0009','Star', 9);



Select * from Rating;


insert into RoomType(RoomTypeCode, RoomType, RoomPrice)
values('RTC-0001','Single','$25' ),
('RTC-0002','Double', '$50'),
('RTC-0003','Triple', '$75'),
('RTC-0004','Quad', '$100'),
('RTC-0005','Queen', '$80'),
('RTC-0006','King', '$85'),
('RTC-0007','Twin', '$70'),
('RTC-0008','Double-double', '$90'),
('RTC-0009','Suite', '$125'),
('RTC-0010','Mini Suite', '$100'),
('RTC-0011','President Suite', '$225'),
('RTC-0012','Connecting room', '$105'),
('RTC-0013','Murphy Room', '$105'),
('RTC-0014','Smoking', '$45');



Select * from RoomType;

insert into Room(RoomCode, RatingCode, RoomTypeCode, RoomAvailability, Floor)
values('ROC-0001', 'RC-0004', 'RTC-0001', 'yes', 'First Floor'),
('ROC-0002', 'RC-0004', 'RTC-0001', 'yes', 'Second Floor'),
('ROC-0003', 'RC-0004', 'RTC-0001', 'yes', 'Third Floor'),
('ROC-0004', 'RC-0004', 'RTC-0001', 'no', 'Second Floor'),
('ROC-0005', 'RC-0005', 'RTC-0002', 'yes', 'First Floor'),
('ROC-0006', 'RC-0005', 'RTC-0002', 'yes', 'Second Floor'),
('ROC-0007', 'RC-0005', 'RTC-0002', 'no', 'Third Floor'),
('ROC-0008', 'RC-0007', 'RTC-0003', 'yes', 'Fourth Floor'),
('ROC-0009', 'RC-0007', 'RTC-0003', 'yes', 'First Floor'),
('ROC-0010', 'RC-0007', 'RTC-0003', 'no', 'Fifth Floor'),
('ROC-0011', 'RC-0007', 'RTC-0003', 'yes', 'Seventh Floor'),
('ROC-0012', 'RC-0007', 'RTC-0005', 'yes', 'Seventh Floor'),
('ROC-0013', 'RC-0007', 'RTC-0005', 'no', 'Seventh Floor'),
('ROC-0014', 'RC-0007', 'RTC-0005', 'yes', 'Seventh Floor'),
('ROC-0015', 'RC-0007', 'RTC-0006', 'no', 'Seventh Floor'),
('ROC-0016', 'RC-0007', 'RTC-0006', 'yes', 'Seventh Floor'),
('ROC-0017', 'RC-0008', 'RTC-0004', 'yes', 'Second Floor'),
('ROC-0018', 'RC-0008', 'RTC-0004', 'yes', 'Second Floor'),
('ROC-0019', 'RC-0008', 'RTC-0004', 'no', 'First Floor'),
('ROC-0020', 'RC-0008', 'RTC-0004', 'no', 'Sixth Floor'),
('ROC-0021', 'RC-0007', 'RTC-0004', 'yes', 'Seventh Floor'),
('ROC-0022', 'RC-0007', 'RTC-0007', 'yes', 'First Floor'),
('ROC-0023', 'RC-0007', 'RTC-0007', 'no', 'Second Floor'),
('ROC-0024', 'RC-0007', 'RTC-0008', 'no', 'First Floor'),
('ROC-0025', 'RC-0007', 'RTC-0008', 'yes', 'Second Floor'),
('ROC-0026', 'RC-0008', 'RTC-0009', 'yes', 'Third Floor'),
('ROC-0027', 'RC-0008', 'RTC-0009', 'yes', 'Third Floor'),
('ROC-0028', 'RC-0008', 'RTC-0012', 'yes', 'Eighth Floor'),
('ROC-0029', 'RC-0008', 'RTC-0012', 'no', 'Ninth Floor'),
('ROC-0030', 'RC-0008', 'RTC-0013', 'yes', 'Tenth Floor'),
('ROC-0031', 'RC-0008', 'RTC-0013', 'no', 'Eighth Floor'),
('ROC-0032', 'RC-0008', 'RTC-0010', 'yes', 'Tenth Floor'),
('ROC-0033', 'RC-0009', 'RTC-0011', 'yes', 'Twelfth Floor'),
('ROC-0034', 'RC-0004', 'RTC-0014', 'yes', 'Sixth Floor'),
('ROC-0035', 'RC-0004', 'RTC-0014', 'no', 'Seventh Floor'),
('ROC-0036', 'RC-0004', 'RTC-0014', 'no', 'Eighth Floor'),
('ROC-0037', 'RC-0004', 'RTC-0014', 'yes', 'Ninth Floor'),
('ROC-0038', 'RC-0004', 'RTC-0014', 'yes', 'Tenth Floor');
Select * from Room;

insert into Customer(CustomerID, CustomerName, CustomerDOB, NRC, Gender, Address, PhoneNumber)
values('C-0001','AungAung', '12-10-1982', '12/yakan(naing)087770', 'Male', 'Yankin', '09-798232321' ),
('C-0002','TunTun', '12-10-1952', '12/yakan(naing)087770', 'Male', 'Yankin', '09-794192321' ),
('C-0003','HlaHla', '10-3-1992', '12/yakan(naing)083470', 'Female', 'Yankin', '09-793422321' ),
('C-0004','MyaMya', '4-4-1999', '12/yakan(naing)081230', 'Female', 'Yankin', '09-458251321' ),
('C-0005','MaungMaung', '7-12-1978', '12/yakan(naing)047670', 'Male', 'Yankin', '09-718255291' ),
('C-0006','AyeAye', '3-25-2000', '12/yakan(naing)097270', 'Female', 'Yankin', '09-538250081' ),
('C-0007','KaungKaung', '9-18-2001', '12/yakan(naing)453770', 'Male', 'Yankin', '09-198541321' ),
('C-0008','SeinSein', '1-10-1992', '12/yakan(naing)083100', 'Female', 'Yankin', '09-928622321' );


Select * from Customer

insert into Reservation(ReservationCode, CustomerID, ReservationDate, CheckInDate, CheckOutDate, Duration, NumberOfRooms)
values('REC-0001', 'C-0001', '12-1-2021', '12-5-2021', '12-6-2021','2days',1),
('REC-0002', 'C-0001', '12-1-2021', '12-5-2021', '12-6-2021','2days',1),
('REC-0003', 'C-0003', '12-2-2021', '12-7-2021', '12-8-2021','2days',1),
('REC-0004', 'C-0004', '12-3-2021', '12-9-2021', '12-9-2021','1day',1),
('REC-0005', 'C-0005', '12-4-2021', '12-13-2021', '12-14-2021','2days',1),
('REC-0006', 'C-0006', '12-5-2021', '12-16-2021', '12-19-2021','4days',1),
('REC-0007', 'C-0006', '12-5-2021', '12-16-2021', '12-19-2021','4days',1),
('REC-0008', 'C-0006', '12-5-2021', '12-16-2021', '12-19-2021','4days',1),
('REC-0009', 'C-0006', '12-5-2021', '12-16-2021', '12-19-2021','4days',1),
('REC-0010', 'C-0007', '12-6-2021', '12-14-2021', '12-15-2021','2days',1),
('REC-0011', 'C-0008', '12-9-2021', '12-20-2021', '12-25-2021','6days',1),
('REC-0012', 'C-0008', '12-9-2021', '12-20-2021', '12-25-2021','6days',1),
('REC-0013', 'C-0001', '12-10-2021', '12-25-2021', '12-27-2021','2days',1),
('REC-0014', 'C-0002', '12-15-2021', '12-27-2021', '12-29-2021','3days',1),
('REC-0015', 'C-0003', '12-14-2021', '12-28-2021', '12-29-2021','2days',1),
('REC-0016', 'C-0004', '12-18-2021', '12-29-2021', '12-29-2021','1day',1),
('REC-0017', 'C-0005', '12-20-2021', '12-30-2021', '12-31-2021','2days',1);


Select * from Reservation;

insert into RoomReservationDetails(ReservationCode, RoomCode)
values('REC-0001', 'ROC-0001'),
('REC-0002', 'ROC-0002'),
('REC-0003', 'ROC-0003'),
('REC-0004', 'ROC-0009'),
('REC-0005', 'ROC-0012'),
('REC-0006', 'ROC-0016'),
('REC-0007', 'ROC-0018'),
('REC-0008', 'ROC-0025'),
('REC-0009', 'ROC-0027'),
('REC-0010', 'ROC-0028'),
('REC-0011', 'ROC-0033'),
('REC-0012', 'ROC-0037'),
('REC-0013', 'ROC-0038'),
('REC-0014', 'ROC-0028'),
('REC-0015', 'ROC-0033'),
('REC-0016', 'ROC-0037'),
('REC-0017', 'ROC-0038');

Select * from RoomReservationDetails;

insert into Payment(PaymentCode, ReservationCode, PaymentDate, PaymentPrice, PaymentType, CardNum )
values( 'P-0001','REC-0001','12-6-2021', '$25', 'Cash', '-'),
( 'P-0002','REC-0002','12-6-2021', '$25', 'Cash', '-'),
( 'P-0003','REC-0003','12-8-2021', '$25', 'Cash', '-'),
( 'P-0004','REC-0004','12-9-2021', '$75', 'Cash', '-'),
( 'P-0005','REC-0005','12-14-2021', '$80', 'Cash', '-'),
( 'P-0006','REC-0006','12-19-2021', '$85', 'Credit cards', '23123'),
( 'P-0007','REC-0007','12-19-2021', '$100', 'Credit cards', '23233'),
( 'P-0008','REC-0008','12-19-2021', '$90', 'Credit cards', '25940'),
( 'P-0009','REC-0009','12-19-2021', '$125', 'Credit cards', '27314'),
( 'P-0010','REC-0010','12-15-2021', '$105', 'Credit cards', '84268'),
( 'P-0011','REC-0011','12-25-2021', '$225', 'Mobile payments', '09-793422321'),
( 'P-0012','REC-0012','12-25-2021', '$45', 'Mobile payments', '09-458251321'),
( 'P-0013','REC-0013','12-27-2021', '$45', 'Mobile payments', '09-718255291'),
( 'P-0014','REC-0014','12-29-2021', '$105', 'Credit cards', '45568'),
( 'P-0015','REC-0015','12-29-2021', '$225', 'Mobile payments', '09-814522321'),
( 'P-0016','REC-0016','12-29-2021', '$45', 'Mobile payments', '09-197251321'),
( 'P-0017','REC-0017','12-31-2021', '$45', 'Mobile payments', '09-824255291');


Select * from Payment;

insert into RoomServiceDetails(ServiceCode, RoomCode)
values('SC-0001', 'ROC-0001'),
('SC-0002', 'ROC-0002'),
('SC-0003', 'ROC-0003'),
('SC-0004', 'ROC-0009'),
('SC-0005', 'ROC-0012'),
('SC-0006', 'ROC-0016'),
('SC-0007', 'ROC-0018'),
('SC-0008', 'ROC-0025'),
('SC-0009', 'ROC-0017');
Select * from RoomServiceDetails;


Select rm.RoomCode, rm.RoomAvailability, rm.Floor, rat.Rating, rt.RoomType, rt.RoomPrice
from Room rm, Rating rat, RoomType rt
Where rat.RatingCode = rm.RatingCode
AND rt.RoomTypeCode = rm.RoomTypeCode
AND rm.RoomAvailability = 'yes'
Order by Rating Desc

create view ReservationReport
as 
Select r.ReservationCode, c.CustomerID, r.CheckinDate, rt.RoomType, rt.RoomPrice, r.NumberOfRooms, p.PaymentPrice
from Customer c, Reservation r, Payment p, RoomReservationDetails rrd, Room rm, RoomType rt 
where c.CustomerID = r.CustomerID
AND r.ReservationCode = rrd.ReservationCode
AND rrd.RoomCode = rm.RoomCode
AND r.ReservationCode = p.ReservationCode
AND rm.RoomTypeCode = rt.RoomTypeCode
AND r.CheckInDate = '12-20-2021'
Select * from ReservationReport;


create view AvailableRoomReport
as 
Select RoomAvailability, COUNT(RoomAvailability) as [Count Available Room] from Room
Group By RoomAvailability
Having RoomAvailability = 'yes';
Select * from AvailableRoomReport;


create view RoomServiceReport
as 
Select rsd.ServiceCode, rsd.RoomCode, s.StaffID, rs.RoomServiceType, rs.RoomServicePrice
from RoomServiceDetails rsd, RoomService rs, Staff s
Where rsd.ServiceCode = rs.ServiceCode
AND rs.StaffID = s.StaffID
AND rs.RoomServiceType = 'Room Cleaning & Chore'
Select * from RoomServiceReport;


Update Payment set PaymentPrice = '123' where PaymentCode = 'P-0001';
Update Payment set PaymentPrice = '45' where PaymentCode = 'P-0002';
Update Payment set PaymentPrice = '40' where PaymentCode = 'P-0003';
Update Payment set PaymentPrice = '100' where PaymentCode = 'P-0004';
Update Payment set PaymentPrice = '125' where PaymentCode = 'P-0005';
Update Payment set PaymentPrice = '130' where PaymentCode = 'P-0006';
Update Payment set PaymentPrice = '130'  where PaymentCode = 'P-0007';
Update Payment set PaymentPrice = '95' where PaymentCode = 'P-0008';
Update Payment set PaymentPrice = '130'  where PaymentCode = 'P-0009';
Delete Payment where PaymentCode > 'P-0009'
Select * from Payment 


