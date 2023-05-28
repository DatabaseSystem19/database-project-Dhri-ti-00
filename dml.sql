insert into Customer(customer_id,first_name,last_name,address)values(1,'John','Doe','jashore');
insert into Customer(customer_id,first_name,last_name,address)values(2,'Joh','Do','bali');
insert into Customer(customer_id,first_name,last_name,address)values(3,'Jack','Das','srilanka');
insert into Customer(customer_id,first_name,last_name,address)values(4,'Mathew','Jazz','uk');
insert into Customer(customer_id,first_name,last_name,address)values(5,'Arijit','Singh','london');
insert into Customer(customer_id,first_name,last_name,address)values(6,'Arij','Saha','usa');
insert into Customer(customer_id,first_name,last_name,address)values(7,'Raha','Kundu','england');
insert into Customer(customer_id,first_name,last_name,address)values(8,'Rony','Ghosh','barasat');
insert into Customer(customer_id,first_name,last_name,address)values(9,'Arif','Islam','hawra');
insert into Customer(customer_id,first_name,last_name,address)values(10,'Saad','Ali','habra');

insert into Employee(employee_id,first_name,last_name,address,salary,hire_date)values(1,'Mack','Don','narail',1000,date '2022-01-01');
insert into Employee(employee_id,first_name,last_name,address,salary,hire_date)values(2,'Mac','Doy','natore',2000,date '2022-01-02');
insert into Employee(employee_id,first_name,last_name,address,salary,hire_date)values(3,'Marry','Wahi','rajshahi',3000,date '2022-01-03');
insert into Employee(employee_id,first_name,last_name,address,salary,hire_date)values(4,'Karan','Grover','rajghat',4000,date '2022-01-04');
insert into Employee(employee_id,first_name,last_name,address,salary,hire_date)values(5,'Kristy','Dsouza','lahore',6000,date '2022-01-05');
insert into Employee(employee_id,first_name,last_name,address,salary,hire_date)values(6,'Dhriti','Ghosh','karachi',5000,date '2022-01-06');
insert into Employee(employee_id,first_name,last_name,address,salary,hire_date)values(7,'Shreya','ghosal','mumbai',7000,date '2022-01-07');
insert into Employee(employee_id,first_name,last_name,address,salary,hire_date)values(8,'Sriti','Jha','delhi',8000,date '2022-01-08');
insert into Employee(employee_id,first_name,last_name,address,salary,hire_date)values(9,'Sneha','Das','dhaka',9000,date '2022-01-09');
insert into Employee(employee_id,first_name,last_name,address,salary,hire_date)values(10,'Shraddha','Kundu','mirpur',2200,date '2022-01-10');


insert into Products(product_id,product_name,price)values(1,'box',1010);
insert into Products(product_id,product_name,price)values(2,'cart',1020);
insert into Products(product_id,product_name,price)values(3,'table',1030);
insert into Products(product_id,product_name,price)values(4,'chair',1040);
insert into Products(product_id,product_name,price)values(5,'bed',1050);
insert into Products(product_id,product_name,price)values(6,'wardrobe',1060);
insert into Products(product_id,product_name,price)values(7,'laptop',100070);
insert into Products(product_id,product_name,price)values(8,'mobile',10080);
insert into Products(product_id,product_name,price)values(9,'headphone',1090);
insert into Products(product_id,product_name,price)values(10,'light',2300);

insert into Supplier(supplier_id,supplier_name,supplier_address)values(1,'Jorge','khulna');
insert into Supplier(supplier_id,supplier_name,supplier_address)values(2,'Jhuhi','jashore');
insert into Supplier(supplier_id,supplier_name,supplier_address)values(3,'Dalia','mongla');
insert into Supplier(supplier_id,supplier_name,supplier_address)values(4,'Priya','tala');
insert into Supplier(supplier_id,supplier_name,supplier_address)values(5,'Shuddho','jhapa');
insert into Supplier(supplier_id,supplier_name,supplier_address)values(6,'Trisha','rupsha');
insert into Supplier(supplier_id,supplier_name,supplier_address)values(7,'Ani','teligati');
insert into Supplier(supplier_id,supplier_name,supplier_address)values(8,'Gopi','sundoli');
insert into Supplier(supplier_id,supplier_name,supplier_address)values(9,'Anas','terminal');
insert into Supplier(supplier_id,supplier_name,supplier_address)values(10,'Mahira','religate');

insert into Transactions(first_name,quantity,price,s_date,customer_id,employee_id,product_id,supplier_id)values('Mamoni',4,10001,date '2022-01-01',8,8,8,8);
insert into Transactions(first_name,quantity,price,s_date,customer_id,employee_id,product_id,supplier_id)values('Mali',3,20001,date '2022-02-02',7,7,7,7);
insert into Transactions(first_name,quantity,price,s_date,customer_id,employee_id,product_id,supplier_id)values('Maria',2,30001,date '2022-03-03',6,6,6,6);
insert into Transactions(first_name,quantity,price,s_date,customer_id,employee_id,product_id,supplier_id)values('Kartik',4,40001,date '2022-04-04',10,10,10,10);
insert into Transactions(first_name,quantity,price,s_date,customer_id,employee_id,product_id,supplier_id)values('Krist',5,60001,date '2022-05-05',1,1,1,1);
insert into Transactions(first_name,quantity,price,s_date,customer_id,employee_id,product_id,supplier_id)values('Dhri',3,50001,date '2022-06-06',2,2,2,2);
insert into Transactions(first_name,quantity,price,s_date,customer_id,employee_id,product_id,supplier_id)values('Shreya',5,70001,date '2022-07-07',3,3,3,3);
insert into Transactions(first_name,quantity,price,s_date,customer_id,employee_id,product_id,supplier_id)values('Sritij',3,80001,date '2022-08-08',4,4,4,4);
insert into Transactions(first_name,quantity,price,s_date,customer_id,employee_id,product_id,supplier_id)values('Snehas',5,90001,date '2022-09-09',5,5,5,5);
insert into Transactions(first_name,quantity,price,s_date,customer_id,employee_id,product_id,supplier_id)values('Shrvan',6,22001,date '2022-01-10',9,9,9,9);

select * from Customer where customer_id=1;

 select * from Transactions where customer_id=(select customer_id from Customer where address='uk');

update Supplier set supplier_name='Jhanvi' where supplier_id=1;

insert into Products(product_id,product_name,price)values(11,'bulb',1250);
delete from Products where product_id=11;

 select first_name from Customer where first_name like 'M%' union select first_name from Customer where first_name like '%t%';

 with max_quantity(val) as (select max(quantity) from Transactions)
  2  select * from Transactions,max_quantity where Transactions.quantity=max_quantity.val;

select count(*) from Customer;

select count(product_name) as number_of_product from Products;

select count(distinct product_name) as number_of_product from Products;

 select avg(quantity) from Transactions;
 select sum(quantity) from Transactions;

 select max(quantity) from Transactions;
  select min(quantity) from Transactions;

 select price,avg(quantity) from Transactions group by price;

 select price,avg(quantity) from Transactions group by price having avg(quantity)>4;

  select s_date from Transactions where customer_id=(select customer_id from Customer where address='usa');
 
  select * from Transactions where quantity> some(select quantity from Transactions where quantity>=4);
 select * from Transactions where quantity> all(select quantity from Transactions where quantity>=2);

select * from Transactions where quantity>=3 and exists(select * from Supplier where supplier_address like '%o%');

select * from Products where product_name like 'b%';
select * from Products where product_name like '%e';
select * from Products where product_name like '%d%b%';

 select * from Transactions natural join Customer where customer_id=2;

select first_name,product_name from Transactions join Products using(product_id);


select first_name,product_name from Transactions left outer join Products using(product_id);
select first_name,product_name from Transactions right outer join Products using(product_id);

create view price_details as select price from Transactions where customer_id=(select customer_id from Customer where last_name='Ghosh');





