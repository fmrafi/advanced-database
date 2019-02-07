create table Student_Info(

Id int not null,
Name varchar(20) not null,
Dept varchar(20) not null,
Merit_position int,
GPA float not null,
PRIMARY KEY(Id )
);


insert into Student_Info values(160401,'Fahim','CSE',2,3.91);
insert into Student_Info values(160402,'Arko','EEE',3,3.80);
insert into Student_Info values(160403,'Pari','CSE',1,3.92);
insert into Student_Info values(160404,'Rifat','ME',7,3.40);



Select * from Student_Info;




Select Name , GPA from Student_Info order by GPA desc;



ALter table  Student_Info add Expected_Salary float;



UPDATE Student_Info set Expected_Salary=40000 where Name='Arko';
UPDATE Student_Info set Expected_Salary=45000 where Name='Fahim';
UPDATE Student_Info set Expected_Salary=45000 where Name='Pari';
UPDATE Student_Info set Expected_Salary=50000 where Name='Rifat';




select Name,GPA from Student_Info where GPA between 3.90 and 4.00;

Select Name, avg (Expected_Salary) as salary from Student_Info where Dept='CSE' having avg (Expected_Salary)>40000 group by Dept,Name;