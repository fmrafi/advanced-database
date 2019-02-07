create table Department(
ID int primary key,
DEPT_NAME varchar(50) not null,
LOCATION varchar(50) not null,
SUPERVISOR varchar(50)
);

insert into Department values (801,'CSE','Rajshahi','Nur E Alam');
insert into Department values(802,'EEE','Dhaka','Faisal Imran');
insert into Department values(803,'CIVIL','Khulna','Meraj Ali');
insert into Department values(804,'MECHANICAL','Chittagong','Sanjir Shishir');

select * from Department;

create table Student2(
ID int primary key,
NAME varchar(50) not null,
GENDER varchar(50) not null,
EXPECTED_SALARY int not null,
DEPT_ID int,
foreign key (DEPT_ID) references Department (ID)
);
insert into Student2 values (101,'Tamim','Male',44000,801);
insert into Student2 values(102,'Rupom','Male',43000,803);
insert into Student2 values(103,'Mijan','Male',45000,801);
insert into student2 values(104,'Tareq','Male',42000,802);
insert into Student2 values(105,'Saudia','Female',48000,802);
insert into Student2 values(106,'Rima','Female',47000,801);
insert into Student2 values(107,'Naima','Female',45500,803);
insert into Student2 values(108,'Sanjida','Female',43500,801);
insert into Student2 values(109,'Khushi','Female',48500,null);
insert into Student2 values(110,'Pronob','Male',48000,null);

select * from Student2;

select  DEPT_NAME,max (EXPECTED_SALARY) from Student2 group by DEPT_NAME having max(EXPECTED_SALARY);

update Student2 set EXPECTED_SALARY=EXPECTED_SALARY*1.05 where EXPECTED_SALARY>(select avg(EXPECTED_SALARY) from Student2);

select * from Department inner join Student2 on DEPARTMENT.ID=STUDENT2.DEPT_ID;
select * from Department left outer join Student2 on DEPARTMENT.ID=STUDENT2.DEPT_ID;

select Student2.NAME,Department.SUPERVISOR from Student2 where Department.DEPT_NAME='CSE' and Student2.EXPECTED_SALARY>43000;