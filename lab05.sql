create table emp_info(
Company_Name varchar(50),
No_of_Employee int,
Starting_salary int,
B_ID int);

insert into emp_info values('Grameenphone',250,40000,132);
insert into emp_info values('Accenture(GP IT)',100,30000,132);
insert into emp_info values('HexaSoft',50,25000,154);
insert into emp_info values('RajIT',50,20000,143);

select * from emp_info;

create table Address(
Id int,
Location varchar(50)
);

insert into Address values(132,'Dhaka');
insert into Address values(143,'Rajshahi');
insert into Address values(154,'Chittagong');

select *  from Address;

select * from showView;
 create view showView as select Company_Name as name,Starting_salary as Salary,Location from Address inner join emp_info on ADDRESS.ID=EMP_INFO.B_ID; 
 
 create view company_info as select Company_Name as Company,No_of_Employee as Employee,Starting_salary as salary,Location as Address from Address inner join emp_info on ADDRESS.ID=EMP_INFO.B_ID;
 select * from company_info;
 
 create or replace view company_info as select Company_Name,Location from Address inner join emp_info on ADDRESS.ID=EMP_INFO.B_ID;