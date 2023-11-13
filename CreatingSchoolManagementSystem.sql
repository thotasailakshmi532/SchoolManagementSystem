create Database SchoolManagementSystem
go
use SchoolManagementSystem
go
Create Table Subjects
(
 subjectID int primary key Identity (1,1),
 subjectName varchar(50),
 TeacherName varchar(50)
)goINSERT INTO Subjects
VALUES
 ( 'Art&Craft','Jack'),
 ( 'Telugu','Hari'),
 ( 'Social','Jill'),
 ( 'Computer','Sunil'),
 ('Maths','Sunil')
 go
 Create Table Classes
(
 ClassId int primary key Identity (1,1),
 ClassName varchar(50),
 ClassFloor int
)
go
INSERT INTO Classes
VALUES
 ('Class 3',0),
('Class 1',0),
 ('Class 2',1),
 ('Class 6',1),
 ('Class 9',2),
 ('Class 7',2),
 ('Class 10',2)
 create Table Student
(
 RollNo int primary key Identity (1,1),
 studentName varchar(50),
 classId int foreign key references Classes(ClassId),
 subjectId int foreign key references Subjects(subjectId)
)
go
INSERT into Student
Values
('Vikran',3,1),
('Lucky',1,4),
('Thomas',2,3),
('Laxmi',4,1),
('Tom',7,5),
('Virat',5,3),
('Ferry',6,4),
('Raju',7,2)

select * from Subjects
select * from Classes
select * from Student