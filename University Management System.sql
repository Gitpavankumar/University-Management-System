create database Universitydb;
use Universitydb;
drop table if exists Students;
drop table if exists Courses;

create table Students (Student_ID int primary key,
First_name varchar(50),
Last_name varchar(50),
Email_ID varchar(50));

create table Courses (Cource_ID int primary key,
Cource_name varchar(50),
Credits int);

drop table if exists Enrollments;
create table Enrollments (Enrollment_ID int primary key,
Student_ID int ,
Cource_ID int ,
Enrollment_date date,
foreign key (Student_ID) references Students(Student_ID),
foreign key (Cource_ID) references Courses(Cource_ID));


insert into Students (Student_ID ,First_name ,Last_name ,Email_ID) 
					 values (1,'Pavan','Kumar','pavan@gmail.com'),
							(2,'puneeth','Kumar','puneeth@gmail.com'),
							(3,'Poornima','Kumari','poornima@gmail.com'),
							(4,'Sujatha','Kumari','sujatha@gmail.com'),
							(5,'Krishna','Kumara','krishna@gmail.com');

insert into Courses values (101,'MBA',4),
						   (102,'Mcom',4),
						   (103,'Msc',4),
						   (104,'SSLC',4),
						   (105,'PUC',4);

insert into Enrollments values (1001, 1, 101, '2026-05-03'),
								(1002, 2, 102, '2026-08-04'),
								(1003, 3, 103, '2026-08-09'),
								(1004, 4, 104, '2026-09-04'),
								(1005, 5, 105, '2026-06-09');
select * from Students;
select * from Courses;
select * from Enrollments;

SELECT
    E.Enrollment_ID,
    S.First_name,
    S.Last_name,
    C.Cource_ID,
    E.Enrollment_date
FROM Enrollments E
JOIN Students S ON E.Student_ID = S.Student_ID
JOIN Courses C ON E.Cource_ID = C.Cource_ID;





