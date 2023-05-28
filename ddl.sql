/*product supply management*/
Drop table Transactions;
Drop table Supplier;
Drop table Products;
Drop table Employee;
Drop table Customer;

Create table Customer(
customer_id int,
first_name varchar(30),
last_name varchar(30),
address varchar(30),
primary key(customer_id)
);

Create table Employee(
employee_id int,
first_name varchar(30),
last_name varchar(30),
address varchar(30),
salary int,
hire_date date,
primary key(employee_id)
);
Create table Products(
product_id int,
product_name varchar(30),
price int,
primary key(product_id)
);

Create table Supplier(
supplier_id int,
supplier_name varchar(30),
supplier_address varchar(30),
primary key(supplier_id)
);

Create table Transactions(
customer_id int,
employee_id int,
product_id int,
supplier_id int,
first_name varchar(30),
quantity int,
price int,
s_date date,
primary key(customer_id,employee_id,product_id,supplier_id),
foreign key(customer_id) references Customer(customer_id),
foreign key(employee_id) references Employee(employee_id),
foreign key(product_id) references Products(product_id),
foreign key(supplier_id) references Supplier(supplier_id)
);

