use Assessment3
create table CompanyInfo(
CId int primary key,
CName nvarchar(50) not null)

insert into CompanyInfo values (1,'Samsung'),(2,'HP'),(3,'Apple'),(4,'Dell'),(5,'Toshiba'),(6,'Redmi')

create table ProductInfo(
PId int primary key,
PName nvarchar(50)not null,
PPrice float,
PMDate Date ,
CId int
) 

insert into ProductInfo values (101,'Laptop',55000.90,'12/12/2023',1)
insert into ProductInfo values (102,'Laptop',35000.90,'12/12/2012',2)
insert into ProductInfo values (103,'Mobile',15000.90,'12/03/2013',2)
insert into ProductInfo values (104,'Laptop',85000.90,'12/12/2012',3)
insert into ProductInfo values (105,'Earphone',75000.90,'12/12/2020',3)
insert into ProductInfo values (106,'Laptop',25000.90,'12/12/2021',3)
insert into ProductInfo values (107,'Mobile',65000.90,'12/12/2012',5)
insert into ProductInfo values (108,'Earphone',85000.90,'12/12/2012',5)
insert into ProductInfo values (109,'Mobile',95000.90,'12/12/2012',6)
select * from ProductInfo join CompanyInfo on ProductInfo.CID=CompanyInfo.CId
select CName,PName from CompanyInfo cross join ProductInfo order by CName,PName
----------------------------------------------------------------


CREATE TABLE Products (
PId INT PRIMARY KEY,
PQ INT,
PPrice DECIMAL(10, 2),
Discount DECIMAL(5, 2)
)


INSERT INTO Products (PId, PQ, PPrice, Discount)
VALUES
(1, 5, 100.00, 10.00),
(2, 10, 200.00, 15.00),
(3, 3, 150.00, 5.00)




SELECT PId,PQ,PPrice,Discount, 
PPrice * PQ AS TotalPrice,
PPrice * PQ - (PPrice * PQ * Discount / 100) AS PriceAfterDiscount
FROM Products



