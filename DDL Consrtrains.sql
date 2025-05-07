create database Saless;
use Saless;
create table orders (
Order_Id int primary key,
Customer_name varchar(20) not null,
Product_Category varchar(20) not null,
Ordered_Item varchar(20) not null,
Contact_No varchar(20) unique
);
desc orders; 
alter table orders add column Order_Quantity int;
rename table orders to Sales_Orders;
desc Sales_Orders;
insert into Sales_Orders (Order_Id, Customer_name, Product_Category, Ordered_Item, Contact_No, Order_Quantity) values
(1, 'Aswin', 'Electronics', 'Laptop', '1231231231', 1),
(2, 'Aysha', 'Clothing', 'T-Shirt', '4564564564', 3),
(3, 'Akhila', 'Electronics', 'Mobile', '7897897897', 2),
(4, 'Keerthana', 'Books', 'Novel', '7417417417', 5),
(5, 'Sanjay', 'Home Appliance', 'Blender', '8528528528', 1),
(6, 'Esther', 'Clothing', 'Jacket', '9639639639', 2),
(7, 'Rapheal', 'Electronics', 'Tablet', '1591591591', 1),
(8, 'Hariet', 'Books', 'Magazine', '3573573573', 4),
(9, 'Karthika', 'Toys', 'Action Figure', '7427427427', 2),
(10, 'Hizana', 'Beauty', 'Perfume', '9629629629', 1);
select Customer_name, Ordered_Item from sales_orders;
update Sales_Orders set Ordered_Item = 'smartphone'
where Order_Id = 3;
drop table Sales_Orders;

