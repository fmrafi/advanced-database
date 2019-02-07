create table Customer(
Customer_name char(30) not null,
Customer_street char(30),
Customer_city char(30),
primary key (Customer_name));

insert into Customer values ('Akash','Monichottor','Shaheb Bazar');
insert into Customer values ('Himu','Northern more','Talaimari');
insert into Customer values ('Mamun','University gate','Kazla');
insert into Customer values ('Bishal','First Gate','kazla');
insert into Customer values ('Bishall','More','Baneshore');
insert into Customer values ('Nafi','Sadur More','Munnafer Mor');
insert into Customer values ('Himel','Upor vodra','Vodra');

select * from Customer

create table Loan(
Loan_number char(30) not null,
Branch_name char(30),
Amount int,
primary key (Loan_number));

insert into Loan values ('L-11','Shaheb Bazar',900);
insert into Loan values ('L-14','Talaimari',1500);
insert into Loan values ('L-15','Kazla',1500);
insert into Loan values ('L-16','Kazla',1300);
insert into Loan values ('L-17','Baneshore',1000);
insert into Loan values ('L-18','Munnafer Mor',2000);
insert into Loan values ('L-19','Vodra',500);

select * from Loan

create table Borrower(
Customer_name char(30) not null,
Loan_number char(30) not null,
primary key (Customer_name),
foreign key (Loan_number) references Loan (Loan_number));

insert into Borrower values ('Akash','L-16');
insert into Borrower values ('Himu','L-19');
insert into Borrower values ('Mamun','L-14');
insert into Borrower values ('Bishal','L-16');
insert into Borrower values ('Bishall','L-17');
insert into Borrower values ('Nafi','L-11');
insert into Borrower values ('Himel','L-15');

select * from Borrower

/*1. No question answer :*/
alter table Customer add Customer_id int;

/*2. No question answer :*/
select * from Loan where Amount>1000;

select Borrower.Customer_name, Borrower.Loan_number, Loan.Amount
from Borrower 
INNER JOIN Loan
on Loan.Loan_number=Borrower.Loan_number where Amount>1000;

/*3. No question answer :*/
select Borrower.Customer_name, Borrower.Loan_number, Loan.Amount
from Borrower 
INNER JOIN Loan
on Loan.Loan_number=Borrower.Loan_number;

/*4. No question answer :*/

select Customer_name,T.Loan_number, S.Amount
from Borrower as T, Loan as S
where  T.Loan_number = S.Loan_number;

/*5. No question answer :*/

select Customer_name from Loan INNER JOIN Borrower 
on Loan.Loan_number=Borrower.Loan_number 
where Branch_name='Kazla';