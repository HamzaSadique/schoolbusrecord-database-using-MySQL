create database SchoolTransportdb;

use SchoolTransportdb;

create table Students(
student_id int primary key,
first_name varchar (50),
last_name varchar (50),
home_adress varchar (255),
grade_level int
);

select*from Students;

insert into Students
(student_id, first_name, last_name, home_adress, grade_level)
values
(1, 'Ali', 'Talha', 'Dahrawala Street No 4 Jaja Town', 2),
(2, 'Ali', 'Hassan', 'Hsp Street No 2 Darbar chock', 3),
(3, 'Hamza', 'Siddique', 'Hsp Street No 3 Rasoolabad coloni', 2),
(4, 'Ali', 'Talha', 'Dahrawala Street No 3 Jaja Town', 7),
(5, 'Fami', 'Jhan', 'OLd hsp street No 1 ', 10),
(6, 'Zeeshan', 'Ali', 'Jamalpur Chk 123', 9);

create table Buses(
bus_id int primary key,
bus_number varchar (50),
capacity int,
bus_model varchar (100),
licence_plate varchar (100) unique
);

select*from Buses;

insert into Buses
(bus_id, bus_number, capacity, bus_model , licence_plate)
values
(1,'Bus 111', 30,'Mercedes-Benz Intouro' , 'ABC-123'),
(2,'Bus 112', 40,'Volvo BBR' , 'Axz-1223'),
(3,'Bus 113', 50,'HINO-PAK' , 'ASK-1523'),
(4,'Bus 114', 30,'Mercedes-Benz Intouro' , 'ABA-2323'),
(5,'Bus 115', 60,'HINO-PAK' , 'XCV-1443'),
(6,'Bus 116', 40,'Volvo BBR' , 'NVM-9090');


create table Drivers(
driver_id int primary key,
first_name varchar (50),
last_name varchar (60),
Phone_number varchar(20),
licence_number varchar (50),
bus_id int,
foreign key(bus_id) references Buses (bus_id)
);

select *from Drivers;

insert into Drivers
(driver_id , first_name, last_name, phone_number, licence_number, bus_id)
values
(1,'Hamza','Ali','92300-5065786','HAM12340008',6),
(2,'Hassan','Ali','92300-5065785','HAS12340009',1),
(3,'Zeeshan','Ali','92300-5065789','ZEE12340010',4),
(4,'Zahid','Khan','92300-5065790','ZAh12340011',2),
(5,'Hamza','Ali','92300-5065777','HAM1234123',3),
(6,'John','Cena','92300-5065123','JPHN12340009',5);

create table BusRoutes(
route_id int primary key,
bus_id int,
student_id int,
pickup_time time,
dropoff_time time,
foreign key(bus_id) references Buses (bus_id),
foreign key (student_id) references Students (student_id)
);

select*from BusRoutes;

insert into BusRoutes
(route_id, bus_id, student_id, pickup_time, dropoff_time )
values
(1, 6,5,'07:30:00','01:00:00'),
(2, 5,6,'08:30:00','02:30:00'),
(3, 3,2,'06:45:00','01:30:00'),
(4, 4,1,'07:30:00','01:45:00'),
(5, 2,3,'08:10:00','03:00:00'),
(6, 1,4,'06:50:00','02:30:00');

create table BusTravelRecords(
record_id int primary key,
bus_id int,
travel_date date,
travel_time time,
speed decimal (10,2),
distance decimal (10,2),
foreign key(bus_id) references Buses ( bus_id)
);

select*from BusTravelRecords;

insert into BusTravelRecords
(record_id, bus_id, travel_date, travel_time, speed, distance   )
values
(1, 6, '2024-03-02','08:30:00', 60.0,10.0),
(2, 2, '2024-04-10','07:30:00', 50.0,19.0),
(3, 5, '2024-07-15','07:00:00', 59.0,15.0),
(4, 1, '2024-01-02','08:30:00', 48.0,05.0),
(5, 3, '2024-03-11','08:00:00', 60.0,100.0),
(6, 6, '2024-06-02','08:45:00', 40.0,30.0);








