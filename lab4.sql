create table employee_info(
ID int,
First_Name varchar(50),
Middle_Name varchar(50),
Last_Name varchar(50)
);

insert into employee_info values(1,'Mizanur',null,null);
insert into employee_info values(2,null,'Rahman',null);
insert into employee_info values(3,null,null,'Jony');
insert into employee_info values(4,'Mizanur','Rahman',null);
insert into employee_info values(5,null,'Rahman','jony');
insert into employee_info values(6,'MIzanur','Rahman','Jony');

select * from employee_info;

create table student3(
ID int,
NAME varchar(50),
GENDER varchar(50),
EXPECTED_SALARY int,
DEPT_ID varchar(50)
);

insert into student3 values(101,'Bishal','Male',24000,'CE_801');
insert into student3 values(102,'Biddut','Male',30000,'E_802');
insert into student3 values(103,'Akas','Male',45000,'CE_801');
insert into student3 values(104,'Musa','Male',40000,'E_802');
insert into student3 values(108,'Sanjida','Female',43500,'CE_801');
insert into student3 values(109,'Saud','Female',45500,null);

select * from student3;

create table department2(
ID varchar(50),
DEPT_NAME varchar(50),
LOCATION varchar(50),
SUPERVISOR varchar(50)
);

insert into department2 values('CE_801','CSE','Rajshahi','Abdulllah sir');
insert into department2 values('E_802','EEE','Dhaka','Mizanur sir');
insert into department2 values('C_803','CIVIL','Khulna','Rahman sir');

select * from department2;

select coalesce(First_Name,Middle_Name,Last_Name) as name from employee_info;

select EXPECTED_SALARY,dense_rank() over(order by EXPECTED_SALARY desc);

select max(EXPECTED_SALARY) as salary from student3 where EXPECTED_SALARY not in (select max(EXPECTED_SALARY) from student3);

select nvl(First_Name,'Mizanur') First_Name,nvl(Middle_Name,'Rahman'),nvl(Last_Name,'Jony') from employee_info;