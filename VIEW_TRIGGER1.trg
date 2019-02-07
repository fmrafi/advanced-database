create table tbl_employee2(
Emp_id varchar(50),
Emp_name varchar(50),
Dept_id int,
Income int,
foreign key (Dept_id) references tb_Branch2 (Dept_id)
);

insert into tbl_employee2 values('IT101','Abul',1,10000);
insert into tbl_employee2 values('HR202','Babul',2,20000);
insert into tbl_employee2 values('IT102','Shafiq',1,45000);
insert into tbl_employee2 values('HR201','Turan',2,30000);

select * from tbl_employee2;

create table tb_Branch2(
Dept_id int,
Dept_name varchar(50),
Location varchar(50),
primary key(Dept_id)
);

insert into tb_Branch2 values(1,'IT','Ghulshan');
insert into tb_Branch2 values(2,'HR','Motijheel');

select * from tb_Branch2;

create or replace procedure test_procedure
(Emp_id in varchar,Emp_name in varchar,Dept_id in int,Income in int)
is
begin
insert into tbl_employee2 values(Emp_id,Emp_name,Dept_id,Income);
end;

create view showview1 as select Emp_name as Name,Income as Salary,Dept_name,Location from tbl_employee2 inner join tb_Branch2 on TBL_EMPLOYEE2.DEPT_ID=TB_BRANCH2.DEPT_ID;

select * from showview1;

create cluster index tbl_employee2 on tbl_Branch2(Location desc);

create table tbl_Audit
 (emp_id varchar(50),
  emp_Name varchar(50),
 dept_id int,
 income int);
 
 create or replace trigger view_trigger1
 after insert or update or delete on tbl_employee2
 for each row
 begin 
 insert into tbl_Audit values('cse1','rafi',3,25000);
 end;
 
 update tbl_employee2 set Income=23000 where Emp_id='cse2'; 
 
 insert into tbl_employee2 values('cse3','masud',4,24000);
 
 select * from tbl_Audit;
 
 select * from view_trigger1;