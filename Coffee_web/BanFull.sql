use master 
----------------------------
if exists(select * from sysdatabases where name='Coffee')
	drop database Coffee
go 
create database Coffee
use Coffee
go 

create table Catogory(
	id int primary key,
	name_catogory nvarchar(50) 
)

go 

create table Product(
	id_product int primary key ,
	name_product nvarchar(50) not null,
	price float not null,
	introduce_product nvarchar(50),	
	id_catogory int references Catogory(id)
)

go

create table Staff(
	id_staff int primary key,
	name_staff nvarchar(50) not null,
	number_phone int not null,
	address_live nvarchar(80) not null,
	gender nvarchar(4) not null,
	id_area int references Area(id)
)

go

create table Customer(
	id_customer int primary key,
	number_phone int ,
	email nvarchar(30),

)

create table Orders(
	id int primary key identity(1,1),
	customer_id int references Customer(id_customer),
	staff_if int references Staff(id_staff),
	price_total float 

)

create table Order_Dentail(
	id int primary key identity(1,1),
	product_id int references Product(id_product),
	price float,
	num int ,
	price_total float,
	order_id int references Orders(id)
)

create table Area(
	id int primary key ,
	name_area nvarchar(10) not null,
	
)
go 
create table Table_Area(
	id int primary key,
	name_table nvarchar(20) not null,
	id_area int references Area(id)
)

go 

-- truyen thong tin vao cac bang --

-- Table Catarogy --

--insert Category
insert into Catogory values(1,'Coffee'),(2,'Juice'),(3,'Tea'),(4,'Sweet Water'),(5,'Cacao'),(6,'Milk'),(7,'Smoothe')
select* from Catogory
--insert Product
select * from Product

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

alter table Staff add work_shift nvarchar(20)

select * from Staff
insert into Staff values (1,N'Nguyễn Hao',21123,'90 Nguyễn Tri Phương',N'Nữ',3,'2000/02/21',N'Ca trua'),
						 (2,N'Nguyễn Tuấn',21123,'90 Nguyễn Tri Phương',N'Nữ',1,'2000/02/21',N'Ca Chiều'), 
						 (3,N'Nguyễn Ánh',53213,'99 Quang Trung','Nam',2,'1993/01/22',N'Ca sáng')

 -- insert Customer 
 select * from Customer
 insert into Customer values (1,312312312,'ThanhBinh@gmail.com'),
							 (2,4645645,'TrinhTT@gmail.com'),
							 (3,8978912,'DoTheNaoDuoc@gmail.com')


--insert order X 
select * from Orders
insert into Orders values(null,1,75000),(3,1,25000),(null,1,30000)
--insert order_details
select * from Orders
select * from Order_Dentail
select * from Product
insert into Order_Dentail values (2,25000,3,3*25000,1)
insert into Order_Dentail values (16,25000,1,25000,2)
insert into Order_Dentail values (5,30000,1,25000,3)


create table Area(
	id int primary key ,
	name_area nvarchar(10) not null,
	
)
create table Table_Area(
	id int primary key,
	name_table nvarchar(20) not null,
	id_area int references Area(id)
)

--insert Area 
select * from Area
insert into Area values (1,N'Khu vực A'),(2,N'Khu vực B'),(3,N'Khu vực C')
--insert Table 
select * from Table_Area
insert into Table_Area values(1,N'Bàn 1',1),(2,N'Bàn 2',1),(3,N'Bàn 3',1),(4,N'Bàn 4',2),(5,N'Bàn 5',2),(6,N'Bàn 6',2),(7,N'Bàn 7',3),(8,N'Bàn 8',3),(9,N'Bàn 9',3)

-- truy van hien cac bang da lam

select * from Catogory
select * from Product
select * from Staff
select * from Customer
select * from Orders
select * from Order_Dentail
select * from Area
select * from Table_Area