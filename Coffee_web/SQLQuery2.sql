select * from Staff
delete from Staff
insert into Staff values (2,N'Nguyễn Tuấn',21123,'90 Nguyễn Tri Phương','2000/02/21',N'Ca Chiều',N'Nữ'), 
						 (3,N'Nguyễn Ánh',53213,'99 Quang Trung','1993/01/22',N'Ca sáng','Nam')

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
insert into Order_Dentail values (7,25000,1,25000,4)
insert into Order_Dentail values (2,25000,1,25000,4)
insert into Order_Dentail values (10,25000,1,25000,4)
--insert Area 
select * from Area
select * from Staff
alter table Staff add constraint fk_staff_area foreign key(id_area) references Area(id) 
insert into Area values (1,N'Khu vực A'),(2,N'Khu vực B'),(3,N'Khu vực C')
--insert Table 
select * from Table_Area
insert into Table_Area values(1,N'Bàn 1',1),(2,N'Bàn 2',1),(3,N'Bàn 3',1),(4,N'Bàn 4',2),(5,N'Bàn 5',2),(6,N'Bàn 6',2),(7,N'Bàn 7',3),(8,N'Bàn 8',3),(9,N'Bàn 9',3)