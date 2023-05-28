
set serveroutput on
declare 
employee_id Employee.employee_id%type;
first_name EMPLOYEE.FIRST_NAME%type;
salary number;
begin
select employee_id,first_name,salary into employee_id,first_name,salary from Employee where employee_id=7;
dbms_output.put_line('EMPLOYEE_id: '||employee_id|| ' FIRST_name: '||first_name || ' salary: '||salary);
end;
/

set serveroutput on
declare 
Products_row Products%rowtype;
begin
select product_id,product_name,price into Products_row.product_id,Products_row.product_name,Products_row.price from Products where product_id=7;
end;
/

set serveroutput on
declare 
cursor Customer_cursor is select * from Customer;
Customer_row Customer%rowtype;
begin
open Customer_cursor;
fetch Customer_cursor into Customer_row.customer_id,Customer_row.first_name,Customer_row.last_name,Customer_row.address;
while Customer_cursor%found loop
dbms_output.put_line('CUSTOMER_id: '||Customer_row.customer_id|| ' FIRST_name: '||Customer_row.first_name || ' LAST_name: ' ||Customer_row.last_name|| ' address: '||Customer_row.address);
dbms_output.put_line('Row count: '|| Customer_cursor%rowcount);
fetch Customer_cursor into Customer_row.customer_id,Customer_row.first_name,Customer_row.last_name,Customer_row.address;
end loop;
close Customer_cursor;
end;
/


DECLARE 
   counter NUMBER := 1;
   product_name2 Products.product_name%TYPE;
   TYPE NAMEARRAY IS VARRAY(5) OF Products.product_name%TYPE;
   A_NAME NAMEARRAY:=NAMEARRAY('Product 1', 'Product 2', 'Product 3', 'Product 4', 'Product 5'); 
   
BEGIN
   counter := 1;
   FOR x IN 5..10  
   LOOP
      SELECT product_name INTO product_name2 FROM Products WHERE product_id=x;
      if product_name2='laptop' 
        then
        dbms_output.put_line(product_name2||' price is '||'100070');
      else if product_name2='mobile'  
        then
        dbms_output.put_line(product_name2||' price is '||'10080');
      else 
        dbms_output.put_line(product_name2||' low '||'budget product');
        end if;
   END LOOP;
END;


set serveroutput on
create or replace function fun(var1 in varchar) return varchar AS
value Products.product_name%type;
begin
  select product_name into value from Products where product_id=var1; 
   return value;
end;
/

set serveroutput on
declare 
value varchar(20);
begin
value:=fun(5);
end;
/
drop function fun;
