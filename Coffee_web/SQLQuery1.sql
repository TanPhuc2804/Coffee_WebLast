--insert Category
insert into Category values(1,'Coffee'),(2,'Juice'),(3,'Tea'),(4,'Sweet Water'),(5,'Cacao'),(6,'Milk'),(7,'Smoothe')
select* from Category
--insert Product
select * from Product
Delete from Product
insert into Product values   (1,N'Cafe đá',20000,'Ice Coffee ',1),
						  (2,N'Cafe sữa',25000,'Coffee with milk',1),
						  (3,N'Cafe sữa tươi',25000,'Coffee with milk fresh',1),
						  (4,N'Bạc sĩu',25000,'Coffee with double milk',1),
						  (5,N'Capuchino',30000,'Capuchino',1),
						  (6,N'Latte',30000,'Latte',1),
						  (7,N'Espresso',205000,'Espresso',1),
						  (8,N'Ép táo',25000,'Apple juice',2),
						  (9,N'Ép cóc',25000,'Ambarella',2),
						  (10,N'Ép ổi',25000,'Guava juice',2),
						  (11,N'Ép dưa hấu',25000,'WaterLemon juice',2),
						  (12,N'Ép cam',25000,'Orange juice',2),
						  (13,N'Ép sơ ri',25000,'Jerry juice',2),
						  (14,N'Trà đào ',25000,'Peach tea',3),
						  (15,N'Trà vải',25000,'Lychee tea',3),
						  (16,N'Trà lipton',25000,'Lipton tea',3),
						  (17,N'Trà gừng',25000,'Ginger tea',3),
						  (18,N'Trà gừng mật ong',30000,'Ginger tea with honey',3),
						  (19,N'Trà bạc hà',25000,'Hint tea',3),
						  (20,N'Sting',20000,'Sting',4),
						  (21,N'Coca',20000,'Coca',4),
						  (22,N'Redbull',25000,'Redbull',4),
						  (23,N'7up',20000,'Seven Up',4),
						  (24,N'Nước suối',15000,'Water',4),
						  (25,N'Cacao đá',25000,'Cacao Ice',5),
						  (26,N'Cacao sữa ',25000,'Cacao with milk',5),
						  (27,N'Choco bạc hà',25000,'Choco with hint',5),
						  (28,N'Sữa tươi',25000,'Milk fresh',6),
						  (29,N'Sữa bạc hà',30000,'Milk fresh with hint',6),
						  (30,N'Sinh tố bơ',35000,'Avocado smoothee',7),
						  (31,N'Sinh tố sapoche',30000,'Sapota smoothee',7),
						  (32,N'Sinh tố chuối',30000,'Banana smoothee',7),
						  (33,N'Sinh tố dừa',30000,'Coconut smoothee',7)
--insert staff 
select * from Staff
delete from Staff
alter table Staff drop column Gender
--insert into Staff values (02,N'Trần Hoàng Huy',79221,N'102 Nguyễn Trải Q1 TPHCM','N','1999/09/12',N'Ca sáng'),
--					 	 (03,N'Trần Văn Đang',01213,N'99 Nguyễn Cư Trinh Q3 TPHCM','','2004/04/12',N'Ca trưa'),
--						 (04,N'Nguyễn Văn Nghĩa',06233,N'102 Quang Trung Q.Gò Vấp TPHCM',N,'1999/01/29',N'Ca tối')

